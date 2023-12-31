extends PathFollow2D

signal reaches_end

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $"Large Zombie".health <= 0:
		set_progress(0)
	elif get_parent().get_name() == "Path2D":
		set_progress(get_progress() + 100 * delta)
	if get_progress_ratio() == 1:
		reaches_end.emit()
		queue_free()
