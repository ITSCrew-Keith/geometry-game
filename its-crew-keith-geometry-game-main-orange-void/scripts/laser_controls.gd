extends CharacterBody2D
func _ready() -> void:
	$CollisionShape2D.disabled = true

func _physics_process(delta: float) -> void:
	look_at(get_global_mouse_position())
	if Input.is_key_pressed(KEY_SPACE) and Global.laser_energy > 0:
		$CollisionShape2D.disabled = false
		visible = true
		Global.laser_energy = Global.laser_energy - 1
	else:
		$CollisionShape2D.disabled = true
		visible = false
