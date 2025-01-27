extends Node2D
var speed = 150
var velocity = Vector2()

func _physics_process(delta: float) -> void:
	
	velocity = Vector2(0, 0)
	var mouse_position = get_global_mouse_position()
	
	var direction = mouse_position
	velocity = speed * direction
	
	move_and_slide(velocity)
