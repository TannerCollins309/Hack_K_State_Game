extends PathFollow2D

signal reaches_end

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	set_progress(get_progress() + 50 * delta)
	if progress == 100:
		reaches_end.emit()
