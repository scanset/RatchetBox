# App spec grammar (v0.2)

A tiny, human-readable spec the model writes from plain English. The host parses it and validates it
against this ratchet's `spec/vocab.json` (legal kinds, edges, types, method modifiers). It says WHAT to
build, never HOW (no C++ in here) - the implement flow maps it to code.

## Syntax (line-oriented; block + keyword-led; `#` starts a comment)

```
node <kind> <Name>
  field <name> <type>
  method <name> <returntype> [virtual|override|abstract|static]
    param <name> <type>            # zero or more, belong to the method above
    `pseudocode of what the method does`   # optional, belongs to the method above
  edge <edgetype> <TargetName>
end

op <Name>
  uses <Name> [<Name>...]
  step `free-text pseudocode`
end
```

- `node` declares a thing of a `kind` (from the vocabulary) with a unique `<Name>`.
- `field` is a data member; `method` is behavior. `<type>`/`<returntype>` is a value type (from the
  vocabulary) or the `<Name>` of another node.
- `param` lines and a `` `backtick body` `` line attach to the `method` directly above them.
- `edge` is a typed relationship to another node (e.g. `extends` for inheritance).
- `op` is a unit of behavior: which nodes it `uses` and the `step`s it performs.

## Vocabulary (this ratchet, v0.2)

- kinds: `class`, `abstract`, `struct`, `enum` (only behavior kinds may have methods; `enum` may not)
- edges: `extends`
- value types: `int`, `long`, `double`, `bool`, `string`, `void`
- method modifiers: `abstract`, `virtual`, `override`, `static`

## Example

```
node abstract Shape
  method area double abstract
  method name string abstract
end

node class Circle
  field radius double
  method area double override
    `return PI * radius * radius`
  method name string override
    `return "circle"`
  edge extends Shape
end

op total_area
  uses Shape Circle
  step `sum area() over a list of Shape*`
end
```

## What the validator checks

Parse-or-fail, then: unique node names; every `kind`, `edge` type, and method modifier is in the
vocabulary; only behavior kinds carry methods; every `edge` target and `op uses` resolves to a defined
node; every `field`/`method`/`param` type is a value type or a defined node. A spec that passes is a
verified design - it "compiles" before any code exists.
