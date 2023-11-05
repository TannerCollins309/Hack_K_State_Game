extends Node2D

var targetsInRange = []

func _physics_process(delta):
	turn()
	
func turn():
		#var enemy_position = get_node("testTower").get_collision_point()
		#get_node("testTower").look_at(enemy_position)
		# print(collider)
	var area = get_node("testTowerRange").get
	# print(area)
	#var area = get_node("testTowerRange").get
	#print(area)
	pass

func _on_area_2d_area_entered(area):
	pass

func _on_test_tower_range_body_entered(body):
	targetsInRange = get_node("testTowerRange").get_overlapping_bodies()
	print("entered")
	print(targetsInRange)


func _on_test_tower_range_body_exited(body):
	targetsInRange = get_node("testTowerRange").get_overlapping_bodies()
