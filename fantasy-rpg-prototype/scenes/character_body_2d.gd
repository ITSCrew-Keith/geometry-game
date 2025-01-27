extends CharacterBody2D

var speed = 350

func _physics_process(delta: float) -> void:
	var direction = (get_global_mouse_position() - position).normalized()
	velocity = direction * speed
	move_and_slide()
