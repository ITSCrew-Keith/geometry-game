extends CharacterBody2D

var speed = 200
@onready var terget=$"../Area2D"


func _physics_process(delta: float) -> void:
		speed = (speed + Global.plus_speed)
		var direction=(terget.position-position).normalized()
		velocity = direction * (speed)
		move_and_slide()
