# Godot_SmoothMovement API Reference
Generated on: Sun Mar  8 03:08:06 AM CET 2026


---



SmoothMovement

**Inherits:** 

Use this node to enable smooth movement on a node. To do this, attach the node to another node as a child. This node contains a "global_target_position" variable that you will be using instead of the regular position.





### `bool` rotation_on = ``true``

Disable or enable rotation (Note: Only the sprite is rotated)



### `bool` sprite_rotation = ``false``

Seperates rotation to the sprite, rather than the parent node



### `Node2D` sprite_node

Sprite, used for rotation when dragging



### `Vector2`[] position_modifiers

This will modify the global_target_position. This can be useful when adding temporary changes to an objects default position.






### `int` modify_position(`Vector2` pos)

modifies the global position and returns the ID of the modification, which can be used to later delete the modification



### `void` remove_position_modification_by_id(`int` index)

removes a modification of the global position through its id

