extends CharacterBody2D


@onready var target= $"../player"



func _physics_process(delta: float) -> void:
	var speed = 700 + (Global.timer / 10)
	var direction = (target.position-position).normalized()
	velocity = direction * speed
	if Global.jump_counter > 0:
		Global.jump_counter = Global.jump_counter - 1
	print(Global.jump_counter)
	if Global.jump_counter == 0:
		move_and_slide()
		Global.jump_counter2 = Global.jump_counter2 - 1
		if Global.jump_counter2 == 0:
			Global.jump_counter = 120
			Global.jump_counter2 = 25
	
