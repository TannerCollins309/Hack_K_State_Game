extends Node2D

var targetsInRange = []
var currentTarget

func _physics_process(delta):
	turn()
	
func turn():
	currentTarget = getTarget()
	print(currentTarget)

func getTarget():
	#var farthest
	#var farthestProgress = 0
	# var progress
	var node
	for i in targetsInRange:
		# node = get_tree().get_root().i
		print(typeof(i))
	#	progress = get_tree().get_root().get_node(i).get(progress)
	#	if progress > farthest:
	#		farthest = i
	#		farthestProgress = progress
	#return farthest
	return null

func attack(target):
	pass

func _on_test_tower_range_body_entered(body):
	targetsInRange = get_node("testTowerRange").get_overlapping_bodies()
	print("entered")
	print(targetsInRange)


func _on_test_tower_range_body_exited(body):
	targetsInRange = get_node("testTowerRange").get_overlapping_bodies()
