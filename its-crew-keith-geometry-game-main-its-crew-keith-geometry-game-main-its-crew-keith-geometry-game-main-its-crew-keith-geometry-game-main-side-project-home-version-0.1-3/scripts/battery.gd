extends AnimatedSprite2D
var frames = [0, 1, 2, 3]
@onready var animated_sprite = %AnimatedSprite2D
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var frame_index = 0
	if Global.dash_energy < 250 and Global.dash_energy > 187.5:
		frame_index = 0
	elif Global.dash_energy < 187.5 and Global.dash_energy > 125:
		frame_index = 1
	elif Global.dash_energy < 125 and Global.dash_energy > 62.5:
		frame_index = 2
	elif Global.dash_energy < 62.5:
		frame_index = 3
		
		
	animated_sprite.frame = frame_index
