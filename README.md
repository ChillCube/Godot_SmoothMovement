# Godot Smooth Movement

This project adds a new node called "SmoothMovement", which is attached to the node you want to move. 
The movement will then be handled by the SmoothMovement node. 

## Installation

Make sure to download the ChillCube Developer tools to use this addon: https://github.com/ChillCube/ChillCube-Developer-Tools.git

### Linux
To add this to your project, copy paste these commands into terminal at the root of your project:
```bash
clone-gd-addon https://github.com/ChillCube/Godot_SmoothMovement.git
```
> [!IMPORTANT]
> Make sure to enable the addon in the project settings!

## Usage
To add the smooth movement to a 2D node, either drag and drop the scene into it as a child, or add this to your script:
```gdscript
var mover : SmoothMovement;

func _ready() -> void:
    mover = SmoothMovement.init(self)
```

> [!IMPORTANT]
> Make sure to not use any of the position values, such as ```global_position``` or ```position```, as this will conflict with SmoothMovement. Instead, always refer to ```mover.global_target_position``` when changing the position of the object.

### Configuration Parameters

| Property | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| **`speed`** | `float` | `20.0` | Movement intensity. Affects both linear and bounce modes. |
| **`bounce`** | `bool` | `true` | Enables spring-based physics (acceleration/velocity). |
| **`damping`** | `float` | `50.0` | Used in bounce mode. Higher values stop the "shaking" faster. |
| **`rotation_on`** | `bool` | `true` | Enables automatic tilting based on horizontal speed. |
| **`rotation_strength`** | `float` | `2.0` | Multiplier for how much the node tilts when moving. |
| **`max_rotation`** | `float` | `1.5` | Clamps the tilt angle (in radians). |
| **`sprite_rotation`** | `bool` | `false` | If true, only rotates the `sprite_node` instead of the parent. |
| **`sprite_node`** | `Node2D` | `null` | The specific node to rotate if `sprite_rotation` is enabled. |

## Deinstallation
### Linux
Run this in the root of your godot project:
```bash
remove-gd-addon Godot_SmoothMovement
```

## For Developers
### Push Changes
Run this at the root of your directory to push changes to any addons you have:
```bash
push-all-addons
```

It will prompt you to enter the name of the commmit. Enter the name after copy pasting it.
