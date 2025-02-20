extends CharacterBody2D


@onready var target= $"../player"



func _physics_process(delta: float) -> void:
	print(Global.jump_counter)
	var speed = 1500
	var direction = (target.position-position).normalized()
	velocity = direction * speed
	if Global.jump_counter > 0:
		Global.jump_counter -= 1
	if Global.jump_counter == 0:
		move_and_slide()
		Global.jump_counter2 -= 1
		if Global.jump_counter2 == 0:
			Global.jump_counter = 300
			Global.jump_counter2 = 25
