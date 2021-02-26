extends Area2D

onready var global = get_node("/root/Global")
onready var HUD = get_node("/root/Level1/HUD")
onready var VP = get_viewport().size
onready var Laser = load("res://Level 1/RedLaser.tscn")
onready var respawn = get_node("/root/Level1/Respawn")
onready var Lasers = get_node("/root/Level1/Enemy Lasers")
onready var Explosion = load("res://Constant/Explosion.tscn")
onready var Explosions = get_node("/root/Level1/Explosions")
onready var PlayerLaser = load("res://Constant/Laser.gd")
onready var ShipNode = get_node("/root/Level1/PlayerShip")
#onready var Ship =  get_node("/root/Level1/PlayerShip/PlayerShip1")
#onready var ShipContainer = get_node("/root/Game/Ship Container")
onready var ShipScene = load("res://Constant/PlayerShip.tscn")
onready var ShipChildren = ShipNode.get_children()
#onready var Ship = ShipNode.get_child()

func explode():
	var explosion = Explosion.instance()
	explosion.position = ShipChildren[0].position
	Explosions.add_child(explosion)
	queue_free()

var Velocity = Vector2(0,1)
var Acceleration = Vector2(0,1)

func _physics_process(_delta):
	position += Velocity
	Velocity += Acceleration
	if global_position.x < -10 or global_position.x > VP.x + 10 or global_position.y < -10 or global_position.y > VP.y + 10:
		queue_free()



func _on_Enemy_Lasers_body_entered(body):
	body.queue_free()
	explode()
	respawn.start()
	HUD.update_lives(-1)
	


