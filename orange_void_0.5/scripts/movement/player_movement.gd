extends CharacterBody2D
var speed = 1
var frames = [0, 1]
@onready var ship_sprite = %AnimatedSprite2D2
@onready var current_time = %current_timer
@onready var laser_text = $laser_text
@onready var best_timer = %best_time
var direction = 0

func _physics_process(delta: float) -> void:
	Global.playerx = position.x
	Global.playery = position.y
	if Input.is_key_pressed(KEY_SPACE):
		speed = 0
	direction = (get_local_mouse_position())
	velocity = direction * speed
	if Input.is_key_pressed(KEY_SHIFT) and Global.dash_energy > 0:
		speed = 2.5
		Global.dash_energy -= 1
	else:
		speed = 1
		if Global.dash_energy < 250:
			Global.dash_energy += 0.05
	if Input.is_key_pressed(KEY_TAB):
		get_tree().change_scene_to_file("res://scenes/menus and game/main_menu.tscn")
		Global.timer = 0
		Global.jump_counter = 150
		Global.jump_counter2 = 25
		Global.coin_counter = 450
		Global.e_speed = 0
		Global.laser_energy = 50
		Global.dash_energy = 250
		Global.boss_counter = 4000
		Global.health = 7
		Global.boss_enabled = false
	frame_manager()
	move_and_slide()


func frame_manager():
	best_timer.text = "best:" + str(Global.best_time / 60)
	laser_text.text = str(Global.laser_energy)
	current_time.text = str(Global.timer / 60)
	var frame_index = 0
	ship_sprite.look_at(get_global_mouse_position())
	if Global.best_time > 6000:
		frame_index = 1
	ship_sprite.frame = frame_index
