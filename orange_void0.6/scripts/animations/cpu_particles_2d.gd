extends CPUParticles2D
var timer = 45

func _ready() -> void:
	$".".emitting = true

func _physics_process(delta: float) -> void:
	timer -= 1
	if timer == 0:
		queue_free()
