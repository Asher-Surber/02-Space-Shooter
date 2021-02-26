extends KinematicBody2D


onready var global = get_node("/root/Global")
onready var Game = get_node("/root/Level1")
#onready var PlayerShip = load("res://Constant/PlayerShip.tscn")
#onready var Ship = get_node("/root/Game/Ship Container")
onready var VP = Game.get_viewport()
onready var Laser = load("res://Constant/Laser.tscn")
onready var Lasers = get_node("/root/Level1/Lasers")


func _ready():
	position = Vector2(500,550)


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
	#position.x = clamp(position.x, 0, VP.get_visible_rect().size.x)
	#position.y = clamp(position.y, 0, VP.get_visible_rect().size.y)
	

	
	
