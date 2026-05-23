# Godot_SmoothMovement API Reference
Generated: 2026-05-24

A godot addon that enables smooth movement on a node using a global_target_position variable

## Class: SmoothMovement
**Inherits:** [Node](https://docs.godotengine.org/en/stable/classes/class_node.html)


### ⚙️ Inspector Variables (Exported)
| Property | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| **speed** | `Variant` | `20.0` | Lerp / spring speed; higher = snappier movement |
| **bounce** | `bool` | `false` | Use spring physics instead of lerp for elastic overshoot |
| **damping** | `float` | `500.0` | Spring damping; higher = less oscillation |
| **rotation_on** | `bool` | `true` | Allow the mover to animate the parent's rotation toward global_target_rotation |
| **tilt_on** | `bool` | `true` | Add a procedural tilt based on horizontal movement |
| **tilt_strength** | `float` | `1.0` | How strongly horizontal velocity affects the tilt angle |
| **max_tilt** | `float` | `0.4` | Maximum tilt angle in radians |
| **sprite_rotation** | `bool` | `false` | Route procedural tilt to a separate sprite_node instead of the parent |
| **sprite_node** | `Node2D` | `-` | Sprite to tilt separately when sprite_rotation is enabled |
| **scale_on** | `bool` | `true` | Animate parent scale toward global_target_scale each frame |

### 🔔 Signals
| Signal | Arguments | Description |
| :--- | :--- | :--- |
| **reached_target** | `position: Vector2` |  Emitted once when the parent arrives within 2 px of the target position |
| **movement_started** | - |  Emitted once when the parent begins moving away from the target |

### 🛠️ Methods
| Method | Arguments | Returns | Description |
| :--- | :--- | :--- | :--- |
| **static func init()** | `parent: Node` | `SmoothMovement` |  Factory: creates and adds a SmoothMovement child to parent, seeding targets from parent's current transform |
| **modify_position()** | `pos : Vector2` | `int` |  Adds an additive position modifier and returns its index (use to remove it later) |
| **remove_position_modification_by_id()** | `index : int` | `void` |  Removes the position modifier at the given index returned by modify_position |

---

