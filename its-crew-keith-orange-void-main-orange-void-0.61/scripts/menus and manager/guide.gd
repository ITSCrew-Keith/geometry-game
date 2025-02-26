extends Node2D
@onready var text = %Label

func _ready() -> void:
	text.visible_ratio = 0
func _physics_process(delta: float) -> void:
	text.visible_ratio += 0.004
	if Input.is_key_pressed(KEY_TAB):
		get_tree().change_scene_to_file("res://scenes/menus and game/main_menu.tscn")
	
