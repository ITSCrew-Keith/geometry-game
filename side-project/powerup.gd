extends Area2D

func _on_body_entered(body: Node2D) -> void:
	Global.e_speed = Global.e_speed - 30
	queue_free()
