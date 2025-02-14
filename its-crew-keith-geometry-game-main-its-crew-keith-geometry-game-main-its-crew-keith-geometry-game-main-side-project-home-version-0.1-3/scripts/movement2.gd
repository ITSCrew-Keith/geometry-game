extends CharacterBody2D
var playery = position.y
var playerx = position.x
var speed = 1

func _ready() -> void:
	var ship_collison = %player
	add_collision_exception_with(ship_collison)

func _physics_process(delta: float) -> void:
	var direction=(get_local_mouse_position())
	velocity = direction * speed
	if Input.is_key_pressed(KEY_SHIFT) and Global.dash_energy > 0:
		speed = 2.5
		Global.dash_energy -= 1
	else:
		speed = 1
		if Global.dash_energy < 250:
			Global.dash_energy += 0.05
	move_and_slide()
