extends CharacterBody2D
var playery = position.y
var playerx = position.x
var speed = 1

func _physics_process(delta: float) -> void:
	var direction=(get_local_mouse_position())
	velocity = direction * speed
	move_and_slide()
