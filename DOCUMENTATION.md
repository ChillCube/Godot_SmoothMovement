# Godot_SmoothMovement API Reference
Generated on: Sun Mar  8 03:16:17 AM CET 2026

### rotation_on
**Type:** bool
**Default:** `true`

Disable or enable rotation (Note: Only the sprite is rotated)

.. _SmoothMovement_sprite_rotation:

### sprite_rotation
**Type:** bool
**Default:** `false`

Seperates rotation to the sprite, rather than the parent node

.. _SmoothMovement_sprite_node:

### sprite_node
**Type:** Node2D

Sprite, used for rotation when dragging

.. _SmoothMovement_position_modifiers:

### modify_position(`Vector2` pos)
**Returns:** int

modifies the global position and returns the ID of the modification, which can be used to later delete the modification

.. _SmoothMovement_remove_position_modification_by_id:

### remove_position_modification_by_id(`int` index)
**Returns:** void

removes a modification of the global position through its id

## Description
.. _SmoothMovement:
SmoothMovement
**Inherits:** 
Use this node to enable smooth movement on a node. To do this, attach the node to another node as a child. This node contains a "global_target_position" variable that you will be using instead of the regular position.
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
.. list-table::
   :header-rows: 1
   * - Return type
     - Signature
   * - `int`
     - `modify_position`(`Vector2` pos)* - `void`
     - `remove_position_modification_by_id`(`int` index)

---

