extends Area2D
signal coin_collection

func _on_body_entered(body: Node2D) -> void:
	if Global.laser_energy < 500:
		Global.laser_energy += 50
	Global.e_speed = Global.e_speed - 30
	queue_free()
	emit_signal("coin_collection")
