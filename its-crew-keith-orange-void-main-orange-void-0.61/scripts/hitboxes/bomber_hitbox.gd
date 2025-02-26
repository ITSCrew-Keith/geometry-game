extends Area2D
@onready var bomb_node: PackedScene = preload("res://scenes/enemies/bomb.tscn")
@onready var bomb_carry = $".."


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player") or body.is_in_group("laser"):
		var instance = bomb_node.instantiate()
		instance.position = bomb_carry.global_position
		get_tree().current_scene.add_child(instance)
		if body.is_in_group("laser"):
			Global.kills += 1
			Global.score += 150
		get_parent().queue_free()
