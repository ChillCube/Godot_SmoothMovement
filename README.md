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
To add the smooth movement to a 2D node, either drag and drop the scene into it as a child, or add this to your script:
```gdscript
var mover : SmoothMovement;

func _ready() -> void:
    mover = SmoothMovement.init(self)
```

> [!IMPORTANT]
> Make sure to not use any of the position values, such as ```global_position``` or ```position```, as this will conflict with SmoothMovement. Instead, always refer to ```mover.global_target_position``` when changing the position of the object.

Property,Type,Default,Description
speed,float,20.0,Movement intensity. Affects both linear interpolation and bounce acceleration.
bounce,bool,true,"When enabled, uses physics-based velocity and damping for a springy effect."
damping,float,50.0,Only used if bounce is true. Higher values reduce oscillation/overshoot faster.
rotation_on,bool,true,Enables automatic tilting based on the horizontal velocity of the node.
rotation_strength,float,2.0,Multiplier for the tilt angle relative to horizontal movement speed.
max_rotation,float,1.5,Clamps the rotation to prevent the node from tilting too far.
sprite_rotation,bool,false,"If true, applies rotation to sprite_node instead of the parent node."
sprite_node,Node2D,null,The specific node to rotate if sprite_rotation is enabled.
