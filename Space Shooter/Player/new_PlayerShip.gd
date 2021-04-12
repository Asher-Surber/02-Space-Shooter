extends KinematicBody2D

onready var Game = get_node("/root/Game")
onready var VP = Game.get_viewport()

onready var Laser = load("res://Player/Laser.tscn")
onready var Lasers = get_node("/root/Game/Lasers")
onready var Blast = load("res://Player/Blast.tscn")
onready var BlastRecharge = get_node("Blast Recharge")

onready var Ship = load("res://Player/PlayerShip.tscn")
onready var PlayerShip = get_node("/root/Game/PlayerShip")


func _process(_delta):
	var input_dir = Vector2(0,0)
	if Input.is_action_pressed("left"):
		input_dir.x -= 5
	if Input.is_action_pressed("right"):
		input_dir.x += 5
	if Input.is_action_just_pressed("fire weapon 1"):
		var laser = Laser.instance()
		laser.position = position + Vector2(0,-30)
		Lasers.add_child(laser)
	if Input.is_action_just_pressed("fire weapon 2"):
		var blast = Blast.instance()
		blast.position = position + Vector2(0,-30)
		Lasers.add_child(blast)
		BlastRecharge.start()
	position += Vector2(input_dir.x,0)
	return position

	
