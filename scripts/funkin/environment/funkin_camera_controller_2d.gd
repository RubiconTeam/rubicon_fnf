## Funkin' 2D node that controls the camera associated with it.
class_name FunkinCameraController2D extends Node

## Determines the formula for updating this camera's values.
enum UpdateMode {
	UPDATE_MODE_NONE,
	UPDATE_MODE_INSTANT,
	UPDATE_MODE_INTERPOLATION,
	UPDATE_MODE_TWEENED
}

#### POSITION ####
@export_group("Position", "position_")
@export var position_target : Vector2 = Vector2.ZERO ## Where the camera's position will end up.
@export var position_offset : Vector2 = Vector2.ZERO ## Offsets the camera's ending position by this value.
@export var position_update_mode : UpdateMode = UpdateMode.UPDATE_MODE_INTERPOLATION ## How the camera should update its position.

@export_subgroup("Interpolation", "position_lerp_")
@export var position_lerp_weight : float = 2.4 ## The weight that's used in the lerp function, in px/s.

@export_subgroup("Tween", "position_tween_")
@export var position_tween_transition : Tween.TransitionType = Tween.TRANS_LINEAR ## The transition type to use for the created position tweens.
@export var position_tween_ease : Tween.EaseType = Tween.EASE_IN ## The ease type to use for the created position tweens.
@export var position_tween_duration : float = 0.0 ## How long the created position tweens should last.

#### ROTATION ####
@export_group("Rotation", "rotation_")
@export var rotation_target : float = 0.0 ## Where the camera's rotation will end up, in degrees.
@export var rotation_offset : float = 0.0 ## Offsets the camera's ending rotation by this value, in degrees.
@export var rotation_update_mode : UpdateMode = UpdateMode.UPDATE_MODE_INTERPOLATION ## How the camera should update its rotation;

@export_subgroup("Interpolation", "rotation_lerp_")
@export var rotation_lerp_weight : float = 2.4 ## The weight that's used in the lerp function, in degrees/s.

@export_subgroup("Tween", "rotation_tween_")
@export var rotation_tween_transition : Tween.TransitionType = Tween.TRANS_LINEAR ## The transition type to use for the created rotation tweens.
@export var rotation_tween_ease : Tween.EaseType = Tween.EASE_IN ## The ease type to use for the created rotation tweens.
@export var rotation_tween_duration : float = 0.0 ## How long the created rotation tweens should last.

#### ZOOM ####
@export_group("Zoom", "zoom_")
@export var zoom_target : Vector2 = Vector2.ZERO ## Where the camera's zoom will end up.
@export var zoom_offset : Vector2 = Vector2.ZERO ## Offsets the camera's ending zoom by this value.
@export var zoom_update_mode : UpdateMode = UpdateMode.UPDATE_MODE_INTERPOLATION ## How the camera should update its zoom.

@export_subgroup("Interpolation", "zoom_lerp_")
@export var zoom_lerp_weight : float = 2.4 ## The weight that's used in the lerp function, per second.

@export_subgroup("Tween", "zoom_tween_")
@export var zoom_tween_transition : Tween.TransitionType = Tween.TRANS_LINEAR ## The transition type to use for the created rotation tweens.
@export var zoom_tween_ease : Tween.EaseType = Tween.EASE_IN ## The ease type to use for the created zoom tweens.
@export var zoom_tween_duration : float = 0.0  ## How long the created zoom tweens should last.
