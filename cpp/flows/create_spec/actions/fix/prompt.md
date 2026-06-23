Your spec failed validation. Return the CORRECTED spec, fixing exactly what the validator reported,
while still satisfying the request. Output ONLY the spec - no prose, no code fences.

Stay in the grammar:
```
node <kind> <Name>
  field <name> <type>
  method <name> <returntype> [virtual|override|abstract|static]
    param <name> <type>
    `pseudocode`
  edge <edgetype> <Target>
end
op <Name>
  uses <Name> ...
  step `pseudocode`
end
```
Vocabulary: kinds `class`/`abstract`/`struct`/`enum` (only these may have methods; `enum` may not);
edges `extends`; value types `int`/`long`/`double`/`bool`/`string`/`void`; method modifiers
`virtual`/`override`/`abstract`/`static`. A `<type>` is a value type or a node you define. Node names
unique; every `edge` target and `op uses` must be a defined node.

## Request
{{ request }}

## Validator problems
{{ errors }}

## Your previous spec
{{ prev }}
