## Specialized [RubiconCharacterController] for Funkin' 2D characters. Just flips left and right animations.
class_name FunkinCharacterController2D extends RubiconCharacterController

## Swaps the sing direction with the corresponding string if [member left_facing] is true.
@export var swappable_directions : Dictionary[String, String] = {
	"LEFT": "RIGHT",
	"RIGHT": "LEFT"
}

## Flips left and right animations.
var flip_animations : bool = false

func _init() -> void:
	set_internal_sing(false)

func _sing(direction: int, holding: bool, miss: bool, custom_prefix: String, custom_suffix: String) -> void:
	if not flip_animations:
		sing_internal(direction, holding, miss, custom_prefix, custom_suffix)
		return
	
	var base_animation : String = animation_sing_animations[direction]
	for direction_name in swappable_directions.keys():
		if (not base_animation.contains(direction_name)):
			continue
		
		var swapped_direction : int = animation_sing_animations.find(base_animation.replace(direction_name, swappable_directions[direction_name]))
		sing_internal(swapped_direction, holding, miss, custom_prefix, custom_suffix)
		break
