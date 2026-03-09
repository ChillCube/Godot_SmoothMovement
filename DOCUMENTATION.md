#  API Reference
Generated: 2026-03-09



## Class: SmoothMovement
**Inherits:** [`Node`](https://docs.godotengine.org/en/stable/classes/class_node.html)

Use this node to enable smooth movement on a node. To do this, attach the node to another node as a child. This node contains a "global_target_position" variable that you will be using instead of the regular position.

### Methods
| Method | Returns | Description |
| :--- | :--- | :--- |
| **modify_position()** | `int` | modifies the global position and returns the ID of the modification, which can be used to later delete the modification |
| **remove_position_modification_by_id()** | `void` | removes a modification of the global position through its id |

---

