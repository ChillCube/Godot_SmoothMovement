# Godot_SmoothMovement API Reference
Generated on: Sun Mar  8 03:27:52 AM CET 2026

## Description
SmoothMovement

**Inherits:** 

Use this node to enable smooth movement on a node. To do this, attach the node to another node as a child. This node contains a "global_target_position" variable that you will be using instead of the regular position.


---

### rotation_on
**Type:** `1`

Disable or enable rotation (Note: Only the sprite is rotated)

### sprite_rotation
**Type:** `1`

Seperates rotation to the sprite, rather than the parent node

### sprite_node
**Type:** `1`

Sprite, used for rotation when dragging

### modify_position(`1` pos)
**Returns:** `1`

modifies the global position and returns the ID of the modification, which can be used to later delete the modification

### remove_position_modification_by_id(`1` index)
**Returns:** `1`

removes a modification of the global position through its id


