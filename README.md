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
> If you use submodules in your project, and don't want these to update to the latest version, remove the last line.
> In that case, run this instead:
> ```bash
> git init && \
> git submodule add --recursive https://github.com/ChillCube/Godot_SmoothMovement.git addons/SmoothMovement && \
> git submodule update --init --recursive --remote addons/SmoothMovement```
