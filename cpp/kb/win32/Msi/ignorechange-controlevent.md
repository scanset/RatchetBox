# IgnoreChange ControlEvent

The IgnoreChange ControlEvent is published by the [DirectoryList control](directorylist-control.md) when the selected folder is changed from one directory to another directory in the control. This event should be authored in the [EventMapping table](eventmapping-table.md).

This ControlEvent requires the user interface to be run at the [*full UI*](f-gly.md) level. This event will not work with a [*reduced UI*](r-gly.md) or [*basic UI*](b-gly.md). For information, see [User Interface Levels](user-interface-levels.md).

## Published By

[DirectoryList](directorylist-control.md)

## Argument

This ControlEvent does not use an argument.

## Action on Subscribers

This ControlEvent does not perform an action on subscribers.

## Typical Use

The [DirectoryCombo control](directorycombo-control.md) commonly employs the IgnoreChange ControlEvent.

 

 


