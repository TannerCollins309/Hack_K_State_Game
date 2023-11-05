extends CharacterBody2D

var speed = 100
var health = 30

# Called when the node enters the scene tree for the first time.
func _ready():
	var zomb_types = $reg_z_sprite.sprite_frames.get_animation_names()
	$reg_z_sprite.play(zomb_types[randi() % zomb_types.size()])


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
