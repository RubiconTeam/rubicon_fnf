## Tells FunkinCamera3D where to point to and how to do so.
class_name FunkinCameraPoint3D extends Marker2D

## Tell the camera if it should assign a zoom specific to this point or not.
@export var use_custom_zoom : bool = false

## What zoom to apply when focusing on this point.
@export var custom_zoom : float = 0.0
