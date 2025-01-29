extends Node2D
signal coin
@onready var powerup_node: PackedScene = preload("res://powerup.tscn")

func _physics_process(delta: float) -> void:
	if Global.counter == 0:
		emit_signal("coin")	
		Global.counter = 500
		
		



func _on_coin() -> void:
	var instance = powerup_node.instantiate()
	instance.position = Vector2(randi_range(-3958,3756) ,randi_range(-2100,2400))
	add_child(instance)
