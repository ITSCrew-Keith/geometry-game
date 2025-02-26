extends Node2D
@onready var main_text = %main_text

func _ready() -> void:
	main_text.visible_ratio = 0

func _physics_process(delta: float) -> void:
	main_text.visible_ratio += 0.004
	if Input.is_key_pressed(KEY_ENTER):
		get_tree().change_scene_to_file("res://scenes/menus and game/main_game.tscn")
	if Input.is_key_pressed(KEY_BACKSPACE):
		get_tree().quit()
	if Input.is_key_pressed(KEY_T):
		get_tree().change_scene_to_file("res://scenes/menus and game/tutorial.tscn")
	if Input.is_key_pressed(KEY_A):
		get_tree().change_scene_to_file("res://scenes/menus and game/achievement.tscn")
