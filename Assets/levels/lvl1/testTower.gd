extends Node2D

var targetsInRange = []
var currentTarget
var location

func _physics_process(delta):
	turn()
	
func turn():
	if targetsInRange:
		currentTarget = getTarget()
	if currentTarget:
		location = getLocation(currentTarget)
	print(location)
	print(typeof(location))
	if location:
		get_node('TowerSprite').look_at(location)

func getTarget():
	var farthest
	var farthestProgress = 0
	var progress
	for i in targetsInRange:
		progress = i.get_parent().get_progress_ratio()
		if progress > farthestProgress:
			farthestProgress = progress
			farthest = i
	return farthest

func getLocation(target):
	var location = target.get_parent().global_position
	return location

func attack(target):
	
	pass

func _on_test_tower_range_body_entered(body):
	targetsInRange = get_node("TowerRange").get_overlapping_bodies()
	print("entered")
	print(targetsInRange)


func _on_test_tower_range_body_exited(body):
	targetsInRange = get_node("TowerRange").get_overlapping_bodies()
