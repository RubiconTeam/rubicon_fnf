@tool

## Specialized [RubiconCharacter2D] that allows for flipping animations.
class_name FunkinCharacter2D extends RubiconCharacter2D

## Whether this character is facing left or not.
@export var left_facing : bool:
	get:
		return _left_facing
	set(val):
		_left_facing = val

var _left_facing : bool = false
var _camera_point : FunkinCameraPoint2D

## Gets the camera point associated with this character, if there is one assigned.
func get_camera_point() -> FunkinCameraPoint2D:
	return _camera_point

func _notification(what: int) -> void:
	match what:
		NOTIFICATION_CHILD_ORDER_CHANGED:
			_camera_point = null
			
			for i in get_child_count():
				var child : Node = get_child(i)
				
				if child is FunkinCameraPoint2D:
					_camera_point = child
					break

func _get_configuration_warnings() -> PackedStringArray:
	var warnings : PackedStringArray = []
	if get_camera_point() == null:
		warnings.append("This node has no camera point, so cameras can not focus on it. Consider adding a FunkinCameraPoint2D.")
	
	if get_character_controller() != null and get_character_controller() is not FunkinCharacterController2D:
		warnings.append("Assigned character controller MUST be a FunkinCharacterController2D to function properly.")
	
	return warnings
