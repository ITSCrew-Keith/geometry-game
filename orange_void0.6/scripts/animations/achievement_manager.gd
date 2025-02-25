extends Node2D
@onready var hydra = %AnimatedSprite2D
@onready var champion = %Sprite2D2
@onready var winner = %winner_ship

func _physics_process(delta: float) -> void:
	if Input.is_key_pressed(KEY_M):
		get_tree().change_scene_to_file("res://scenes/menus and game/main_menu.tscn")
	if Global.hydra_slayer == true:
		hydra.modulate.a = 1
	else:
		hydra.modulate.a = 0.15
	if Global.champion == true:
		champion.modulate.a = 1
	else:
		champion.modulate.a = 0.15
	if Global.winner == true:
		winner.modulate.a = 1
	else:
		winner.modulate.a = 0.15
