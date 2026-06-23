# GUI app spec grammar (win32-gui domain)

The SAME spec grammar (`node`/`field`/`method`/`edge`/`op`), validated against the GUI vocabulary
(`spec/gui.json`). Models a desktop GUI declaratively: windows/panels contain widgets, widgets raise
events to handlers, handlers carry the logic.

## Syntax (block, keyword-led, one statement per line, `#` comments)

```
node <kind> <Name>
  field <name> <type> = <value>  # literal value sets the control's text/title, e.g.  field text string = `Greet`
  <edgetype> <Target>            # e.g.  contains GreetButton   /   on_click OnGreet
  method <name> <returntype>     # on window/handler kinds (behavior)
    `pseudocode`
end

op <Name>
  uses <Name> ...
  step `pseudocode`
end
```

## Vocabulary (win32-gui)

- kinds: `window`, `panel`, `button`, `label`, `textbox`, `handler` (only `window` and `handler` carry
  methods/behavior; widgets are declarative)
- edges: `contains` (window/panel -> widgets), `on_click` (button -> handler), `on_change` (textbox -> handler)
- value types: `string`, `int`, `bool`
- a `field` `<type>` is a value type or another node's `<Name>`

## Example

```
node window Main
  field title string = `Greeter`
  contains GreetButton
  contains NameBox
  contains OutputLabel
end

node textbox NameBox
  field placeholder string
end

node button GreetButton
  field text string = `Greet`
  on_click OnGreet
end

node label OutputLabel
  field text string = ``
end

node handler OnGreet
  method run void
    `read NameBox text, set OutputLabel text to "Hello, " + that text`
end
```

## What the validator checks

Unique node names; every `kind` and `edge` type is in the GUI vocabulary; `contains`/`on_click`/
`on_change` are only allowed from/to their declared kinds; every edge target resolves to a defined
node. A GUI spec that passes is a verified UI design.
