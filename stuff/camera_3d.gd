extends Camera3D

@export var position_amount := 0.1
@export var rotation_amount_degrees := 3
@export var sway_speed := 0.7

var elapsed := 0.0
var base_position: Vector3
var base_rotation: Vector3


func _ready() -> void:
	base_position = position
	base_rotation = rotation


func _process(delta: float) -> void:
	elapsed += delta * sway_speed
	var t := elapsed

	position = base_position + Vector3(
		sin(t*0.95),
		sin(t),
		sin(t*1.13)) * position_amount

	rotation = base_rotation + Vector3(sin(t*0.96),
	0,
	sin(t*1.14) * 0.5) * deg_to_rad(rotation_amount_degrees)