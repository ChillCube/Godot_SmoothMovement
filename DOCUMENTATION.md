# Godot_SmoothMovement API Reference
Generated on: Mon Mar  9 12:51:56 AM CET 2026

A Godot Addon

---

## Properties
| Property | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| **position_modifiers** | `` | `-` | This will modify the global_target_position. This can be useful when adding temporary changes to an objects default position. |

## Methods
| Method | Returns | Description |
| :--- | :--- | :--- |
| **modify_position()** | `int` | modifies the global position and returns the ID of the modification, which can be used to later delete the modification |
| **remove_position_modification_by_id()** | `void` | removes a modification of the global position through its id |

