extends CharacterBody2D
var phase_swap = false

func _physics_process(delta: float) -> void:
	if Global.boss_enabled == true:
		queue_free()
		set_physics_process(false)  # Prevents further execution
		return
	var target = Vector2(Global.playerx,Global.playery)
	var speed = 750
	var direction = (target - position).normalized()
	velocity = direction * speed
	
	if Global.jump_counter == 0:
		move_and_slide()
		
		if phase_swap == false:
			if Global.phase == 1:
				Global.phase = 0
				phase_swap = true
			else:
				Global.phase = 1
				phase_swap = true
				
	if Global.jump_counter > 0 and phase_swap == true:
		phase_swap = false
