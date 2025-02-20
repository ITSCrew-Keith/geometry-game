extends CharacterBody2D

@onready var target= $"../player"



func _physics_process(delta: float) -> void:
	var speed = 100 + (Global.timer / 10) + Global.e_speed
	var direction = (target.position-position).normalized()
	velocity = direction * speed
	move_and_slide()
	
