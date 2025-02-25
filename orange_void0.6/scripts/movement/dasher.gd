extends CharacterBody2D


@onready var target= $"../player"



func _physics_process(delta: float) -> void:
	var speed = 750
	var direction = (target.position-position).normalized()
	velocity = direction * speed
	if Global.jump_counter == 0:
		move_and_slide()
	if Global.boss_enabled == true:
		queue_free()
		set_physics_process(false)  # Prevents further execution
		return
