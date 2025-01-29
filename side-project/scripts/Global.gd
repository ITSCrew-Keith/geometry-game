extends Node
var timer = 0
var jump_counter = 120
var jump_counter2 = 25
var counter = 450
var e_speed = 0
signal coin
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	counter = counter - 1
	print(Global.e_speed)
	timer = timer + 1
