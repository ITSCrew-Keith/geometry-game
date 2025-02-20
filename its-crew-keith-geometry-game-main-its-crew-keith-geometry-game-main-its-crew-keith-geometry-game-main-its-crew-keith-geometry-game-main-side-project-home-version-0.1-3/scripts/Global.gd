extends Node
var playerx = 0
var playery = 0
var timer = 0
var jump_counter = 300
var jump_counter2 = 45
var coin_counter = 450
var e_speed = 0
var enemy_counter = 100
var laser_energy = 50
var dash_energy = 250
var best_time = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
