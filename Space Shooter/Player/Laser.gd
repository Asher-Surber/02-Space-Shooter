extends Area2D

onready var Explosion = load("res://Explosions/Explosion.tscn")
onready var global = get_node("/root/Global")
onready var VP = get_viewport().size
onready var Laser = load("res://Player/Laser.tscn")
onready var Lasers = get_node("/root/Game/Lasers")
onready var Enemy1 = load("res://Enemies/Enemy1.tscn")
onready var Enemy2 = load("res://Enemies/Enemy2.tscn")
onready var Enemies = get_node("/root/Game/Enemies")
onready var EnemyScript = load("res://Enemies/Enemies1.gd")
onready var HUD = get_node("/root/Game/HUD")
onready var Explosions = get_node("/root/Game/Explosions")
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
		HUD.update_score(body.get_parent().points)
		body.queue_free()
		explode()
	#else:
		#update_hit_points(-1)
