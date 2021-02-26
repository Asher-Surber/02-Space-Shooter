extends Area2D

onready var Explosion = load("res://Constant/Explosion.tscn")
onready var global = get_node("/root/Global")
onready var VP = get_viewport().size
onready var Laser = load("res://Constant/Laser.tscn")
onready var Lasers = get_node("/root/Level1/Lasers")
onready var Enemy = load("res://Level 1/Enemy.tscn")
onready var Enemies = get_node("/root/Level1/Enemies")
onready var EnemyScript = load("res://Level 1/Enemy.gd")
onready var HUD = get_node("/root/Level1/HUD")
onready var Explosions = get_node("/root/Level1/Explosions")
onready var EnemyChildren = Enemies.get_children()



var Velocity = Vector2(0,-1)
var Acceleration = Vector2(0,-1)

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

#func update_hit_points(number):
	#Enemy.hit_points += number


func _on_Lasers_body_entered(body):
	#if Enemy.hit_points <= 0:
		body.queue_free()
		explode()
		HUD.update_score(Enemies.points)
	#else:
		#update_hit_points(-1)
