extends CharacterBody2D

@onready var target = $"../player"

var d := 0.0
var radius := 500
var speed := 15.0
var base_follow_speed := 250

func _physics_process(delta: float) -> void:
		if Global.boss_enabled == true:
			queue_free()
			set_physics_process(false)
			return
		d += delta * speed
		var orbit_position = target.position + Vector2(
			sin(d) * radius,
			cos(d) * radius
		)
		var direction = (orbit_position - position).normalized()
		var follow_speed = base_follow_speed + (Global.timer / 10) + Global.e_speed
		velocity = direction * follow_speed
		move_and_slide()
