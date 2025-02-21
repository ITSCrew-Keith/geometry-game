extends CharacterBody2D
var speed = 1

func _physics_process(delta: float) -> void:
	Global.playerx = position.x
	Global.playery = position.y
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
