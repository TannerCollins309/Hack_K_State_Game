extends Node2D

var targetsInRange = []
var currentTarget

func _physics_process(delta):
	turn()
	
func turn():
	currentTarget = getTarget()
	# print(currentTarget)

func getTarget():
	#var farthest
	#var farthestProgress = 0
	# var progress
	var node
	for i in targetsInRange:
		var progress = i.get_parent().get_progress_ratio()
	return null

func attack(target):
	pass

func _on_test_tower_range_body_entered(body):
	targetsInRange = get_node("testTowerRange").get_overlapping_bodies()
	print("entered")
	print(targetsInRange)


func _on_test_tower_range_body_exited(body):
	targetsInRange = get_node("testTowerRange").get_overlapping_bodies()
