# Godot_SmoothMovement API Reference
Generated on: Mon Mar  9 12:46:19 AM CET 2026

A Godot Addon

---

## Properties
| Property | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| **speed** | `Variant` | `20` | No description provided. |
| **bounce** | `` | `true` | No description provided. |
| **velocity** | `Variant` | `Vector2.ZERO` | No description provided. |
| **damping** | `Variant` | `50.0` | No description provided. |
| **rotation_on** | `` | `true` | No description provided. |
| **rotation_strength** | `` | `2` | No description provided. |
| **max_rotation** | `` | `1.5` | No description provided. |
| **sprite_rotation** | `` | `false` | No description provided. |
| **sprite_node** | `` | `-` | No description provided. |
| **global_target_position** | `` | `-` | No description provided. |
| **global_target_rotation** | `` | `-` | No description provided. |
| **position_modifiers** | `` | `-` | This will modify the global_target_position. This can be useful when adding temporary changes to an objects default position. |
| **new_mover** | `Variant` | `SmoothMovement.new()` | No description provided. |
| **change** | `Variant` | `global_target_position + _get_total_modifier() - get_parent().global_position` | No description provided. |
| **acceleration** | `Variant` | `(target_pos - get_parent().global_position) * speed * 3` | No description provided. |
| **change** | `` | `(global_target_position - get_parent().global_position) * delta` | No description provided. |
| **total_modification** | `` | `Vector2.ZERO` | No description provided. |

## Methods
| Method | Returns | Description |
| :--- | :--- | :--- |
| **modify_position()** | `int` | modifies the global position and returns the ID of the modification, which can be used to later delete the modification |
| **remove_position_modification_by_id()** | `void` | removes a modification of the global position through its id |
| **_process()** | `void` | No description provided. |
| **_bounce()** | `void` | No description provided. |
| **_move()** | `void` | No description provided. |
| **_rotate_to_movement()** | `void` | No description provided. |
| **_get_total_modifier()** | `Vector2` | No description provided. |

## Signals
| Signal | Description |
| :--- | :--- |
