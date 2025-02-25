extends Node
var playerx = 0
var playery = 0
var timer = 0
var jump_counter = 150
var jump_counter2 = 15
var coin_counter = 450
var e_speed = 0
var laser_energy = 50
var dash_energy = 250
var best_time = 0
var boss_counter = 2500
var health = 7
var boss_enabled = false
var phase = 1
var boss_invincible = 75
var hydra_slayer = false
var kills = 0
var champion = false
var winner = false
var score = 0
var best_score = 0
var score_delay = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_tree().change_scene_to_file("res://scenes/menus and game/main_menu.tscn")
	
func _physics_process(delta: float) -> void:
	if score_delay > 0:
		score += 5
		score_delay -= 5
	if jump_counter > 0:
		jump_counter -= 1
	if jump_counter == 0:
		jump_counter2 -= 1
	if jump_counter2 == 0:
		jump_counter = 150
		jump_counter2 = 15
	if kills > 49:
		champion = true
	if Global.best_time > 6000:
		winner = true
