Write an app spec for the request below, in this grammar (block-structured, keyword-led, one statement
per line, `#` comments). Output ONLY the spec - no prose, no code fences.

```
node <kind> <Name>
  field <name> <type>
  method <name> <returntype> [virtual|override|abstract|static]
    param <name> <type>
    `pseudocode of what the method does`
  edge <edgetype> <Target>
end

op <Name>
  uses <Name> [<Name>...]
  step `pseudocode of a step`
end
```

Vocabulary you must stay within:
- kinds: `class`, `abstract`, `struct`, `enum` (only these may have methods; `enum` may NOT have methods)
- edges: `extends` (one node extends another)
- value types: `int`, `long`, `double`, `bool`, `string`, `void`
- method modifiers: `virtual`, `override`, `abstract`, `static`
- a `field`/`method`/`param` `<type>` is a value type above, or the `<Name>` of another node you define

Rules: node names are unique; every `edge` target and every `op uses` name must be a node you define;
abstract base classes use `abstract` with `abstract` methods; subclasses `extends` the base and
`override` those methods. Keep pseudocode bodies short and plain.

## Request
{{ request }}
