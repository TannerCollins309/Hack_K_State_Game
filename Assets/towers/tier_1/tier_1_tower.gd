extends Node2D

var targetsInRange = []
var currentTarget
var location

func _physics_process(delta):
	turn()
	
func turn():
	if targetsInRange:
		currentTarget = getTarget()
		get_node('tier_1_sprite').play("shoot")
	else:
		get_node('tier_1_sprite').play("default")
	if currentTarget:
		location = getLocation(currentTarget)
	#print(location)
	#print(typeof(location))
	if location:
		get_node('tier_1_sprite').look_at(location)

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
	
func _on_tower_range_body_entered(body):
	targetsInRange = get_node("TowerRange").get_overlapping_bodies()


func _on_tower_range_body_exited(body):
	targetsInRange = get_node("TowerRange").get_overlapping_bodies()


func _on_fire_rate_timeout():
	if targetsInRange:
		currentTarget.health -= 1
