extends Node2D
@onready var hydra = %AnimatedSprite2D
@onready var champion = %Sprite2D2
@onready var winner = %winner_ship
@onready var survivor = %Sprite2D3
@onready var survivor_text = %Label2
@onready var survivor2 = %Sprite2D4
@onready var survivor2_text = %Label3

func _physics_process(delta: float) -> void:
	if Input.is_key_pressed(KEY_TAB):
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
	if Global.survivor == true:
		survivor.modulate.a = 1
		survivor_text.modulate.a = 1
	else:
		survivor.modulate.a = 0.15
		survivor_text.modulate.a = 0.15
	if Global.survivor2 == true:
		survivor2.modulate.a = 1
		survivor2_text.modulate.a = 1
	else:
		survivor2.modulate.a = 0.15
		survivor2_text.modulate.a = 0.15
