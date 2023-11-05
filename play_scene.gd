extends Node

@export var reg_zombie_scene: PackedScene
@export var large_zombie_scene: PackedScene
@export var crawler_zombie_scene: PackedScene
@export var level_scene: PackedScene
@export var turret_1_scene: PackedScene

var numgen = RandomNumberGenerator.new()

var health = 100

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
			$Level/lvl_0/Path2D.add_child(new_reg_zomb)
			new_reg_zomb.reaches_end.connect(_on_regular_zombie_reaches_end)
		2:
			var new_large_zomb = large_zombie_scene.instantiate()
			$Level/lvl_0/Path2D.add_child(new_large_zomb)
			new_large_zomb.reaches_end.connect(_on_large_zombie_reaches_end)
		3:
			var new_crawler_zomb = crawler_zombie_scene.instantiate()
			$Level/lvl_0/Path2D.add_child(new_crawler_zomb)
			new_crawler_zomb.reaches_end.connect(_on_crawling_zombie_reaches_end)


func _on_regular_zombie_reaches_end():
	health -= 3
	$HUD/HealthCount.text = str(health)


func _on_large_zombie_reaches_end():
	health -= 6
	$HUD/HealthCount.text = str(health)


func _on_crawling_zombie_reaches_end():
	health -= 2
	$HUD/HealthCount.text = str(health)
