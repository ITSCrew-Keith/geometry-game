extends Node
var timer = 0
var jump_counter = 120
var jump_counter2 = 25
var coin_counter = 450
var e_speed = 0
var enemy_counter = 100
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	enemy_counter = enemy_counter - 1
	coin_counter = coin_counter - 1
	timer = timer + 1
