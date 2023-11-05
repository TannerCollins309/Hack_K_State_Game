extends Node

@export var reg_zombie_scene: PackedScene
@export var large_zombie_scene: PackedScene
@export var crawler_zombie_scene: PackedScene
@export var level_scene: PackedScene

var numgen = RandomNumberGenerator.new()

var health = 100;

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_hud_start_round():
	$Zombie_Spawn.start()
	


func _on_zombie_spawn_timeout():
	var randnum = numgen.randi_range(1,3)
	match randnum:
		1:
			var new_reg_zomb = reg_zombie_scene.instantiate()
			$Level/test_lvl/Path2D.add_child(new_reg_zomb)
		2:
			var new_large_zomb = large_zombie_scene.instantiate()
			$Level/test_lvl/Path2D.add_child(new_large_zomb)
		3:
			var new_crawler_zomb = crawler_zombie_scene.instantiate()
			$Level/test_lvl/Path2D.add_child(new_crawler_zomb)


func _on_regular_zombie_reaches_end():
	health -= 3


func _on_large_zombie_reaches_end():
	health -= 6


func _on_crawling_zombie_reaches_end():
	health -= 2
