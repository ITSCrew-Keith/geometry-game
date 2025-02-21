extends Label

func _ready() -> void:
	visible_ratio = 0

func _physics_process(delta: float) -> void:
	visible_ratio = visible_ratio + 0.004
