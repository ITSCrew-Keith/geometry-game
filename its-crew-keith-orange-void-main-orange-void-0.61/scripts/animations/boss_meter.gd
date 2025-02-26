extends AnimatedSprite2D
var frames = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18]
@onready var boss_meter = %boss_meter

func _physics_process(delta: float) -> void:
	var frame_index = 0
	if Global.boss_enabled == false:
		visible = false
	else:
		visible = true
	if Global.health == 7:
		frame_index = 0
	elif Global.health == 6:
		frame_index = 2
	elif Global.health == 5:
		frame_index = 3
	elif Global.health == 4:
		frame_index = 4
	elif Global.health == 3:
		frame_index = 5
	elif Global.health == 2:
		frame_index = 6
	elif Global.health == 1:
		frame_index = 7
	elif Global.health == 0:
		frame_index = 8
	elif Global.health == -1:
		frame_index = 9
	elif Global.health == -2:
		frame_index = 10
	elif Global.health == -3:
		frame_index = 12
	elif Global.health == -4:
		frame_index = 14
	elif Global.health == -5:
		frame_index = 15
	elif Global.health == -6:
		Global.hydra_slayer = true
		print("end_fight")
		queue_free()
		
	boss_meter.frame = frame_index
		
