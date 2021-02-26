extends KinematicBody2D

onready var Game = get_node("/root/Level1")
onready var VP = Game.get_viewport()

onready var Laser = load("res://Constant/Laser.tscn")
onready var Lasers = get_node("/root/Level1/Lasers")

onready var Ship = load("res://Constant/PlayerShip.tscn")
onready var PlayerShip = get_node("/root/Level1/PlayerShip")


func _process(_delta):
	var input_dir = Vector2(0,0)
	if Input.is_action_pressed("left"):
		input_dir.x -= 5
	if Input.is_action_pressed("right"):
		input_dir.x += 5
	if Input.is_action_just_pressed("fire"):
		var laser = Laser.instance()
		laser.position = position + Vector2(0,-30)
		Lasers.add_child(laser)
	position += Vector2(input_dir.x,0)
	return position




