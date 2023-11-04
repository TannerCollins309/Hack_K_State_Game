extends Node2D

func _physics_process(delta):
	turn()
	
func turn():
	#if get_node("testTower").is_colliding():
		# var collider = get_node("testTowerRange").get_collider()
		#var enemy_position = get_node("testTower").get_collision_point()
		#get_node("testTower").look_at(enemy_position)
		# print(collider)
	var area = get_node("testTowerRange").get
	print(area)

func _on_area_2d_area_entered(area):
	print("entered") # Replace with function body.
