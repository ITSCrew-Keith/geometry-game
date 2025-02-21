extends Label



func _process(delta: float) -> void:
	self.text = "best:" + str(Global.best_time / 60)
