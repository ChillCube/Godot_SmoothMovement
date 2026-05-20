@icon("res://addons/Godot_SmoothMovement/icon_animation.png")
extends Node
class_name SmoothMovement

@export var speed = 20.0 ## Lerp / spring speed; higher = snappier movement

@export_group("Bouncing")
@export var bounce : bool = false ## Use spring physics instead of lerp for elastic overshoot
var velocity = Vector2.ZERO
@export var damping : float = 500.0 ## Spring damping; higher = less oscillation

@export_group("Rotation")
@export var rotation_on : bool = true ## Allow the mover to animate the parent's rotation toward global_target_rotation
@export var tilt_on : bool = true ## Add a procedural tilt based on horizontal movement
@export_range(0.0, 10.0, 0.1) var tilt_strength : float = 1.0 ## How strongly horizontal velocity affects the tilt angle
@export_range(0.0, 3.14, 0.01) var max_tilt : float = 0.4 ## Maximum tilt angle in radians
@export var sprite_rotation : bool = false ## Route procedural tilt to a separate sprite_node instead of the parent
@export var sprite_node : Node2D ## Sprite to tilt separately when sprite_rotation is enabled

@export_group("Scale")
@export var scale_on : bool = true ## Animate parent scale toward global_target_scale each frame

signal reached_target(position: Vector2) ## Emitted once when the parent arrives within 2 px of the target position
signal movement_started ## Emitted once when the parent begins moving away from the target

var procedural_tilt : float = 0.0
var global_target_position : Vector2
var global_target_rotation : float
var global_target_scale : Vector2 # Added for size tracking
var position_modifiers : Array[Vector2]

var _prev_near_target: bool = true

static func init(parent: Node) -> SmoothMovement: ## Factory: creates and adds a SmoothMovement child to parent, seeding targets from parent's current transform
	var new_mover = SmoothMovement.new()
	# It is safer to add the child first so it enters the tree properly
	parent.add_child(new_mover)
	
	new_mover.global_target_position = parent.global_position
	new_mover.global_target_rotation = parent.global_rotation
	
	# Use a default or the current scale
	if "scale" in parent:
		new_mover.global_target_scale = parent.scale
	else:
		new_mover.global_target_scale = Vector2.ONE
		
	return new_mover

func modify_position(pos : Vector2) -> int: ## Adds an additive position modifier and returns its index (use to remove it later)
	position_modifiers.append(pos)
	return position_modifiers.size() - 1

func remove_position_modification_by_id(index : int): ## Removes the position modifier at the given index returned by modify_position
	position_modifiers.remove_at(index)

func _process(delta: float) -> void:
	_calculate_tilt(delta)

	var target_pos = global_target_position + _get_total_modifier()

	if bounce:
		_bounce(delta, target_pos)
	else:
		_move(delta, target_pos)

	_apply_scale(delta) # Added scale application to the loop

	var parent = get_parent()
	if parent and "global_position" in parent:
		var near = parent.global_position.distance_to(target_pos) < 2.0
		if not near and _prev_near_target:
			movement_started.emit()
		elif near and not _prev_near_target:
			reached_target.emit(parent.global_position)
		_prev_near_target = near

func _calculate_tilt(delta: float) -> void:
	if not tilt_on:
		procedural_tilt = lerp_angle(procedural_tilt, 0.0, delta * speed)
		return

	var parent = get_parent()
	var displacement_x = (global_target_position.x - parent.global_position.x)
	var horizontal_vel = velocity.x if bounce else displacement_x * speed
	
	var desired_tilt = clamp(horizontal_vel * 0.002 * tilt_strength, -max_tilt, max_tilt)
	procedural_tilt = lerp_angle(procedural_tilt, desired_tilt, delta * speed)

func _bounce(delta: float, target_pos: Vector2) -> void:
	var parent = get_parent()
	var acceleration = (target_pos - parent.global_position) * speed * 3
	velocity += acceleration * delta
	velocity *= pow(damping, -delta)
	parent.global_position += velocity * delta
	_apply_rotations(delta)

func _move(delta: float, target_pos: Vector2) -> void:
	var parent = get_parent()
	parent.global_position = parent.global_position.lerp(target_pos, delta * speed)
	_apply_rotations(delta)

func _apply_rotations(delta: float) -> void:
	var parent = get_parent()
	
	if sprite_rotation and sprite_node:
		if rotation_on:
			parent.global_rotation = lerp_angle(parent.global_rotation, global_target_rotation, delta * speed)
		sprite_node.rotation = lerp_angle(sprite_node.rotation, procedural_tilt, delta * speed)
	else:
		var base_rot = global_target_rotation if rotation_on else parent.global_rotation
		var final_rot = base_rot + procedural_tilt
		parent.global_rotation = lerp_angle(parent.global_rotation, final_rot, delta * speed)

func _apply_scale(delta: float) -> void:
	if not scale_on: return
	var parent = get_parent()
	if parent and "scale" in parent:
		# Use move_toward or a robust lerp
		parent.scale = parent.scale.lerp(global_target_scale, clamp(delta * speed, 0.0, 1.0))

func _get_total_modifier() -> Vector2:
	var total_modification : Vector2 = Vector2.ZERO
	for modifier in position_modifiers:
		total_modification += modifier
	return total_modification
