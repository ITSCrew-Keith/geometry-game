extends Node2D

func _physics_process(delta: float) -> void:
	if Input.is_key_pressed(KEY_ENTER):
		get_tree().change_scene_to_file("res://scenes/main_game.tscn")
	if Input.is_key_pressed(KEY_BACKSPACE):
		get_tree().quit()
