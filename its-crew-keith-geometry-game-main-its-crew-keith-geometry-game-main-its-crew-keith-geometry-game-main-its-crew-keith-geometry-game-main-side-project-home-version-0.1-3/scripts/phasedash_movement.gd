extends CharacterBody2D
var phase = 1
var phase_swap = false

func _physics_process(delta: float) -> void:
	var target = Vector2(Global.playerx,Global.playery)
	var speed = 2000
	var direction = (target - position).normalized()
	velocity = direction * speed
	
	if Global.jump_counter == 0:
		move_and_slide()
		
		if phase_swap == false:
			if phase == 1:
				phase = 0
				phase_swap = true
			else:
				phase = 1
				phase_swap = true
				
	if Global.jump_counter > 0 and phase_swap == true:
		phase_swap = false
