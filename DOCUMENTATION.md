# Godot_SmoothMovement API Reference
Generated on: Mon Mar  9 01:22:38 PM CET 2026

Godot Addon

---

## Properties
| Property | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| **bounce** | `` | `true` | If set to true, will change the movement calculation to allow for "bouncy" movement. |
| **damping** | `Variant` | `50.0` | used to adjust the bouncy movement if enabled. |
| **rotation_on** | `` | `true` | Disable or enable rotation (Note: Only the sprite is rotated) |
| **rotation_strength** | `` | `2` | If rotation is enabled, how much it should rotate. |
| **max_rotation** | `` | `1.5` | Seperates rotation to the sprite, rather than the parent node |
| **sprite_node** | `` | `-` | Sprite, used for rotation when dragging |
| **position_modifiers** | `` | `-` | This will modify the global_target_position. This can be useful when adding temporary changes to an objects default position. |

## Methods
| Method | Returns | Description |
| :--- | :--- | :--- |
| **modify_position()** | `int` | modifies the global position and returns the ID of the modification, which can be used to later delete the modification |
| **remove_position_modification_by_id()** | `void` | removes a modification of the global position through its id |

