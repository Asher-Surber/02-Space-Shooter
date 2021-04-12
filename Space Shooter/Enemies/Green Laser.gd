extends Area2D

onready var VP = get_viewport().size
onready var Laser = load("res://Enemies/GreenLaser.tscn")
onready var Lasers = get_node("/root/Game/Enemy Lasers")
var Explosion = load("res://Explosions/Explosion.tscn")
onready var Explosions = get_node("/root/Game/Explosions")



var Velocity = Vector2(0,1)
var Acceleration = Vector2(0,1)

func _physics_process(_delta):
	position += Velocity
	Velocity += Acceleration
	if global_position.x < -10 or global_position.x > VP.x + 10 or global_position.y < -10 or global_position.y > VP.y + 10:
		queue_free()

func explode():
	var explosion = Explosion.instance()
	explosion.position = position
	Explosions.add_child(explosion)
	queue_free()

func _on_Enemy_Lasers_body_entered(body):
	body.queue_free()
	explode()
	
