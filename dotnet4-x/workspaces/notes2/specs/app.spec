name: NotesApp
intent: a console menu to manage notes using the note store
behavior:
  - show a menu: 1 add, 2 list, 3 remove, 4 quit
  - on add, prompt for title and body, create a note, and add it to the NotesStore
  - on list, print every note as id, title, body
  - on remove, prompt for an id and remove that note
constraints: C# 5, console, single project
