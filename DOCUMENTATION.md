# Godot_SmoothMovement API Reference
Generated on: Sun Mar  8 03:12:59 AM CET 2026

.. _SmoothMovement:
SmoothMovement
**Inherits:** 
Use this node to enable smooth movement on a node. To do this, attach the node to another node as a child. This node contains a "global_target_position" variable that you will be using instead of the regular position.
Property Index
.. list-table::
   :header-rows: 1
   * - Type
     - Name
     - Default value
   * - `bool`
     - `rotation_on`
     - ``true``
   * - `bool`
     - `sprite_rotation`
     - ``false``
   * - `Node2D`
     - `sprite_node`
     - ````
   * - `Vector2`[]
     - `position_modifiers`
     - ````
Method Index
.. list-table::
   :header-rows: 1
   * - Return type
     - Signature
   * - `int`
     - `modify_position`(`Vector2` pos)* - `void`
     - `remove_position_modification_by_id`(`int` index)
Property Descriptions
.. _SmoothMovement_rotation_on:
Disable or enable rotation (Note: Only the sprite is rotated)
.. _SmoothMovement_sprite_rotation:
Seperates rotation to the sprite, rather than the parent node
.. _SmoothMovement_sprite_node:
### sprite_node
**Type:** `Node2D`


Sprite, used for rotation when dragging



.. _SmoothMovement_position_modifiers:


This will modify the global_target_position. This can be useful when adding temporary changes to an objects default position.
Method Descriptions
.. _SmoothMovement_modify_position:
### modify_position(`Vector2` pos)
**Returns:** `int`


modifies the global position and returns the ID of the modification, which can be used to later delete the modification



.. _SmoothMovement_remove_position_modification_by_id:


### remove_position_modification_by_id(`int` index)
**Returns:** `void`


removes a modification of the global position through its id


