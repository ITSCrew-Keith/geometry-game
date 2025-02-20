extends Label
@onready var label = %Label

func _ready() -> void:
	label.visible_ratio = 0

func _physics_process(delta: float) -> void:
	label.visible_ratio = label.visible_ratio + 0.005
