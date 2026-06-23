# SelectionPathOn ControlEvent

The [SelectionTree control](selectiontree-control.md) uses the SelectionPathOn event to publish a Boolean value indicating whether there is a selection path associated with the currently selected feature. This event should be authored in the [EventMapping table](eventmapping-table.md).

This event can only affect controls that are located on the same dialog box as the SelectionTree control.

This ControlEvent requires the user interface to be run at the [*full UI*](f-gly.md) level. This event will not work with a [*reduced UI*](r-gly.md) or [*basic UI*](b-gly.md). For information, see [User Interface Levels](user-interface-levels.md).

The SelectionPathOn ControlEvent is never published during a [Maintenance Installation](maintenance-installation.md).

## Published By

[SelectionTree](selectiontree-control.md)

## Argument

None.

## Action on Subscribers

None.

## Typical Use

A [Text](text-control.md) control on the same modal dialog as the SelectionTree should subscribe to the event via the [EventMapping table](eventmapping-table.md). The Text Control displays the caption of the selection path. This text control is visible or hidden depending on the event.

 

 


