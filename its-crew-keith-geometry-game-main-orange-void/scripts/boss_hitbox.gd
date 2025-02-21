extends Area2D
@onready var boss_mini: PackedScene = preload("res://scenes/boss.tscn")
@onready var boss = $".."


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("laser"):
		for i in range(2):
			var instance = boss_mini.instantiate()
			instance.position = boss.global_position + Vector2(randi_range(-300, 300), randi_range(-300, 300))
			get_tree().current_scene.add_child(instance)
			get_parent().queue_free()
	if body.is_in_group("player"):
		if Global.timer > Global.best_time:
			Global.best_time = Global.timer
		get_tree().reload_current_scene()
		Global.timer = 0
		Global.jump_counter = 150
		Global.jump_counter2 = 25
		Global.coin_counter = 450
		Global.e_speed = 0
		Global.enemy_counter = 100
		Global.laser_energy = 50
		Global.dash_energy = 250
