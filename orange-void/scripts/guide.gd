extends Node2D

func _physics_process(delta: float) -> void:
	if Input.is_key_pressed(KEY_M):
		get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
