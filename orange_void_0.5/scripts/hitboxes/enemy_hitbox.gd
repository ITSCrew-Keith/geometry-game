extends Area2D
@onready var death_effect: PackedScene = preload("res://scenes/extra scenes/explosion_particals.tscn")

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		if Global.timer > Global.best_time:
			Global.best_time = Global.timer
		get_tree().reload_current_scene()
		Global.timer = 0
		Global.jump_counter = 150
		Global.jump_counter2 = 25
		Global.coin_counter = 450
		Global.e_speed = 0
		Global.laser_energy = 50
		Global.dash_energy = 250
		Global.boss_counter = 4000
		Global.health = 7
	if body.is_in_group("laser"):
			Global.kills += 1
			var instance2 = death_effect.instantiate()
			instance2.position = self.global_position
			get_tree().current_scene.add_child(instance2)
			get_parent().queue_free()
