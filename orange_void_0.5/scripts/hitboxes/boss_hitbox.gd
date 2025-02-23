extends Area2D
@onready var boss_mini: PackedScene = preload("res://scenes/enemies/boss.tscn")
@onready var death_effect: PackedScene = preload("res://scenes/extra scenes/explosion_particals.tscn")
@onready var boss = $".."


func _physics_process(delta: float) -> void:
	if Global.boss_invincible > 0:
		Global.boss_invincible -= 1
	if Global.health == -6:
		Global.boss_enabled = false

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("laser") and Global.boss_invincible < 1:
		Global.boss_invincible = 150
		Global.health = Global.health - 1
		for i in range(2):
			if Global.health > 0:
				var instance = boss_mini.instantiate()
				instance.position = boss.global_position + Vector2(randi_range(-1000, 1000),randi_range(-1000, 1000))
				get_tree().current_scene.add_child(instance)
		var instance2 = death_effect.instantiate()
		instance2.position = boss.global_position
		get_tree().current_scene.add_child(instance2)
		Global.kills += 1
		get_parent().queue_free()
	
	
	
	
	if body.is_in_group("player") and Global.boss_invincible < 1:
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
		Global.boss_enabled = false
