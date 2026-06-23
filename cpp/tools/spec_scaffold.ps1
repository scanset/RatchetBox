# spec_scaffold.ps1 - the cpp ratchet's MAPPING (deterministic half): turn a validated spec AST (from
# `ratchet spec-emit`, on stdin) into a BUILDING C++ skeleton - one header per node with inheritance,
# fields, and method stubs (`return {};`) so the project compiles+links immediately. The model then
# fills the real bodies from each method's pseudocode (edit_file), gated by the compiler. Structure is
# correct by construction; only behavior needs the model.   ratchet spec-emit <r> <f> | spec_scaffold -Proj App
param([string] $Proj)
$ErrorActionPreference = "Stop"

# AST JSON on stdin (raw bytes -> strip UTF-8 BOM -> text).
$sin = [Console]::OpenStandardInput(); $ms = New-Object System.IO.MemoryStream; $sin.CopyTo($ms); $bytes = $ms.ToArray()
if ($bytes.Length -ge 3 -and $bytes[0] -eq 239 -and $bytes[1] -eq 187 -and $bytes[2] -eq 191) { $bytes = if ($bytes.Length -eq 3) { @() } else { $bytes[3..($bytes.Length - 1)] } }
$ast = [System.Text.Encoding]::UTF8.GetString($bytes) | ConvertFrom-Json

$root = $null
if ((Test-Path $Proj) -and (Test-Path (Join-Path $Proj "project.json"))) { $root = $Proj }
elseif (Test-Path (Join-Path (Join-Path "workspaces" $Proj) "project.json")) { $root = Join-Path "workspaces" $Proj }
if (-not $root) { Write-Output ("no project (project.json not found) for: " + $Proj); exit 1 }

$nodeNames = @{}; foreach ($n in $ast.nodes) { $nodeNames[$n.name] = $true }
function CppType($t) { switch ($t) { 'string' { 'std::string' } 'int' { 'int' } 'long' { 'long' } 'double' { 'double' } 'bool' { 'bool' } 'void' { 'void' } default { $t } } }
function Sig($m) { $ps = @(); foreach ($p in $m.params) { $ps += ((CppType $p.type) + " " + $p.name) }; return ($ps -join ", ") }

$coreDir = Join-Path $root "src\core"
if (-not (Test-Path $coreDir)) { New-Item -ItemType Directory -Force $coreDir | Out-Null }
$utf8 = New-Object System.Text.UTF8Encoding $false
$written = @()

foreach ($n in $ast.nodes) {
    $base = $null; foreach ($e in $n.edges) { if ($e.type -eq 'extends') { $base = $e.target } }
    # includes: base + referenced node-types + <string> when used
    $refs = New-Object System.Collections.Generic.HashSet[string]
    $needString = $false
    foreach ($f in $n.fields) { if ($f.type -eq 'string') { $needString = $true } elseif ($nodeNames[$f.type]) { [void]$refs.Add($f.type) } }
    foreach ($m in $n.methods) {
        if ($m.ret -eq 'string') { $needString = $true } elseif ($nodeNames[$m.ret]) { [void]$refs.Add($m.ret) }
        foreach ($p in $m.params) { if ($p.type -eq 'string') { $needString = $true } elseif ($nodeNames[$p.type]) { [void]$refs.Add($p.type) } }
    }
    if ($base) { [void]$refs.Add($base) }

    $sb = New-Object System.Text.StringBuilder
    [void]$sb.AppendLine("#pragma once")
    [void]$sb.AppendLine("// generated from spec node: " + $n.kind + " " + $n.name)
    if ($needString) { [void]$sb.AppendLine("#include <string>") }
    foreach ($r in $refs) { [void]$sb.AppendLine('#include "' + $r + '.h"') }
    [void]$sb.AppendLine("")
    $decl = "class " + $n.name; if ($base) { $decl += " : public " + $base }
    [void]$sb.AppendLine($decl + " {")
    [void]$sb.AppendLine("public:")
    $hasVirtual = $false
    foreach ($f in $n.fields) { [void]$sb.AppendLine("    " + (CppType $f.type) + " " + $f.name + "{};") }
    # field-wise constructor so the class is constructible with its values (ops use make_unique<T>(...))
    if ($n.fields.Count -gt 0) {
        $cp = @(); $ci = @(); foreach ($f in $n.fields) { $cp += ((CppType $f.type) + " " + $f.name); $ci += ($f.name + "(" + $f.name + ")") }
        [void]$sb.AppendLine("    " + $n.name + "(" + ($cp -join ", ") + ") : " + ($ci -join ", ") + " {}")
    }
    foreach ($m in $n.methods) {
        $isAbstract = ($m.mods -contains 'abstract')
        $isVirtual = $isAbstract -or ($m.mods -contains 'virtual') -or ($m.mods -contains 'override')
        if ($isVirtual) { $hasVirtual = $true }
        $pre = ""; if ($isVirtual) { $pre = "virtual " }
        $head = "    " + $pre + (CppType $m.ret) + " " + $m.name + "(" + (Sig $m) + ")"
        if ($isAbstract) { [void]$sb.AppendLine($head + " = 0;") }
        else {
            $post = ""; if ($m.mods -contains 'override') { $post = " override" }
            $body = "{ }"; if ($m.ret -ne 'void') { $body = "{ return {}; }" }
            $cmt = ""; if ($m.body) { $cmt = "  // TODO: " + $m.body }
            [void]$sb.AppendLine($head + $post + " " + $body + $cmt)
        }
    }
    if ($hasVirtual) { [void]$sb.AppendLine("    virtual ~" + $n.name + "() = default;") }
    [void]$sb.AppendLine("};")
    $path = Join-Path $coreDir ($n.name + ".h")
    [System.IO.File]::WriteAllText($path, $sb.ToString(), $utf8)
    $written += ("src\core\" + $n.name + ".h")
}

# main.cpp includes every node header so the inline stubs compile + link; stub entry point.
# Do NOT overwrite an existing main.cpp - the op implementation lives there once written.
$mainPath = Join-Path $root "src\main.cpp"
if (-not (Test-Path $mainPath)) {
    $mainSb = New-Object System.Text.StringBuilder
    foreach ($n in $ast.nodes) { [void]$mainSb.AppendLine('#include "core/' + $n.name + '.h"') }
    [void]$mainSb.AppendLine("")
    [void]$mainSb.AppendLine("// ops to implement: " + (($ast.ops | ForEach-Object { $_.name }) -join ", "))
    [void]$mainSb.AppendLine("int main() { return 0; }")
    [System.IO.File]::WriteAllText($mainPath, $mainSb.ToString(), $utf8)
    $written += "src\main.cpp"
}

Write-Output ("OK: scaffolded " + $ast.nodes.Count + " node(s) -> " + ($written -join ", "))
exit 0
