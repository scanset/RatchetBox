name: App
role: behavior
intent: a console entry point that exercises the Counter
behavior:
  - in func main, build a Counter with NewCounter
  - add 1 to it 1000 times, then print the final Value() with fmt.Println
constraints: console entry point (func main); uses the existing Counter API verbatim
