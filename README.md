# Godot Smooth Movement

This project adds a new node called "SmoothMovement", which is attached to the node you want to move. 
The movement will then be handled by the SmoothMovement node. 

## Installation
To add this to your project, use the following commands:
```bash
git init && \
git submodule add --recursive https://github.com/ChillCube/Godot_SmoothMovement.git addons/SmoothMovement && \
git submodule update --init --recursive --remote
```

> [!WARNING]
> If you use submodules in your project, and don't want these to update to the latest version, run this instead:
> ```bash
> git init && \
> git submodule add --recursive https://github.com/ChillCube/Godot_SmoothMovement.git addons/SmoothMovement && \
> git submodule update --init --recursive --remote addons/SmoothMovement
> ```

## Usage
To add the smooth movement to a 2D node, either drag and drop the scene into it as a child, or add this inside the ready function:
```gdscript
func _ready() -> void:
    var mover = SmoothMovement.init(self)
```

> [!IMPORTANT]
> Make sure to not use any of the position values, such as ```global_position``` or ```position```, as this will conflict with SmoothMovement. Instead, always refer to ```mover.global_target_position``` when changing the position of the object.


