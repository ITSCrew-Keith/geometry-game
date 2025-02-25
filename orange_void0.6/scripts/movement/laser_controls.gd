extends CharacterBody2D
func _ready() -> void:
	$CollisionShape2D.disabled = true

func _physics_process(delta: float) -> void:
	look_at(get_global_mouse_position())
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT) and Global.laser_energy >= -2:
		Global.laser_energy = Global.laser_energy - 2
		if Global.laser_energy > 0:
			$CollisionShape2D.disabled = false
			visible = true
	else:
		$CollisionShape2D.disabled = true
		visible = false
