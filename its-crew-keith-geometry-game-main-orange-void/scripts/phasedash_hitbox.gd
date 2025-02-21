extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		get_tree().reload_current_scene()
		if Global.timer > Global.best_time:
			Global.best_time = Global.timer
		Global.timer = 0
		Global.jump_counter = 150
		Global.jump_counter2 = 25
		Global.coin_counter = 450
		Global.e_speed = 0
		Global.enemy_counter = 100
		Global.laser_energy = 50
		Global.dash_energy = 250
		Global.boss_counter = 10000
	if body.is_in_group("laser"):
		if Phase.phase == 1:
			get_parent().queue_free()
