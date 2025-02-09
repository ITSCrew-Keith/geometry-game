extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		get_tree().reload_current_scene()
		Global.timer = 0
		Global.jump_counter = 120
		Global.jump_counter2 = 25
		Global.coin_counter = 450
		Global.e_speed = 0
		Global.enemy_counter = 100
	if body.is_in_group("laser"):
		print("killed")
		queue_free()
