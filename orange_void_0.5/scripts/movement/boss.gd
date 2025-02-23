extends CharacterBody2D
var speed = 0
@onready var target= $"../player"
 
func _ready() -> void:
	speed = randi_range(400, 700)


func _physics_process(delta: float) -> void:
	var direction = (target.position-position).normalized()
	velocity = direction * speed
	if Global.boss_invincible == 0:
		move_and_slide()
