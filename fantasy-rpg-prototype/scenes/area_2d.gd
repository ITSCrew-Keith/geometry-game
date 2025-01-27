extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("enemy"):
		Global.plus_speed =+ 5
		get_tree().reload_current_scene()
