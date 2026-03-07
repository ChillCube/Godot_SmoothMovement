# Godot Smooth Movement

This project adds a new node called "SmoothMovement", which is attached to the node you want to move. 
The movement will then be handled by the SmoothMovement node. 

## Installation
### Linux
To add this to your project, copy paste these commands into terminal at the root of your project:
```bash
git init && \
mkdir -p addons && \
git clone https://github.com/ChillCube/Godot_SmoothMovement.git addons/SmoothMovement
while read -r url || [ -n "$url" ]; do \
    [[ "$url" =~ ^#.* ]] || [ -z "$url" ] && continue; \
    repo_name=$(basename "$url" .git); \
    if [ ! -d "addons/$repo_name" ]; then \
        git clone --depth 1 "$url" "addons/$repo_name"; \
    else \
        echo "$repo_name already exists, skipping..."; \
    fi \
done < DEPENDENCIES
```

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
git rm -f addons/SmoothMovement && \
rm -rf .git/modules/addons/SmoothMovement && \
rmdir addons 2>/dev/null
```

## For Developers
### Push Changes
If you've made changes to the submodule and want to push these changes to the project, copy paste this into the terminal at the root of the directory:
```bash
echo "Enter your commit message:"; \
read COMMIT_MSG; \
set ROOT_DIR (git rev-parse --show-toplevel); \
set SUB_PATH "addons/SmoothMovement"; \
cd "$ROOT_DIR/$SUB_PATH"; and \
git checkout main; and \
git pull origin main --rebase; and \
git add .; and \
git commit -m "$COMMIT_MSG" --allow-empty; and \
git push origin main; and \
cd "$ROOT_DIR"; and \
git add "$SUB_PATH"; and \
git commit -m "Ref(submodule): $COMMIT_MSG" --allow-empty; and \
git push origin (git branch --show-current)
```

It will prompt you to enter the name of the commmit. Enter the name after copy pasting it.
