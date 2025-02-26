extends Area2D
@onready var bomb = $"."
var bomb_timer = 125

func _physics_process(delta: float) -> void:
	bomb.scale *= 1.035
	bomb_timer -= 1
	if bomb_timer == 0:
		queue_free()
	
func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		if Global.score > Global.best_score:
			Global.best_score = Global.score
		get_tree().reload_current_scene()
		Global.score = 0
		Global.jump_counter = 150
		Global.jump_counter2 = 25
		Global.coin_counter = 450
		Global.e_speed = 0
		Global.laser_energy = 50
		Global.dash_energy = 250
		Global.boss_counter = 4000
		Global.boss_enabled = false
		Global.health = 7
		Global.score_delay = 0
		Global.timer = 0
