extends AnimatedSprite2D
@onready var animated_sprite = $"."
var frame_opt = [0, 1]


func _physics_process(delta: float) -> void:
		var frame_index = 0
		if Phase.phase == 1:
			frame_index = 0
			animated_sprite.modulate.a = 1
		if Phase.phase == 0:
			frame_index = 1
			animated_sprite.modulate.a = 0.5
		animated_sprite.frame = (frame_index)
