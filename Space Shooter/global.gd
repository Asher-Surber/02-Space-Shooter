extends Node

#onready var PlayerShipSc = load("res://Constant/PlayerShip.tscn")
onready var Menu = load("res://Menus/Menu.tscn")
#onready var Game = get_node("/root/Game")
#onready var PlayerShip = get_node("/root/Level1/PlayerShip")
#onready var Explosion = load("res://Constant/Explosion.tscn")
#onready var Explosions = get_node("/root/Level1/Explosions")
var score = 0
var lives = 3
var level = 1

func _unhandled_input(event):
	if event.is_action_pressed("quit"):
		get_tree().quit()
	if event.is_action_pressed("menu"):
# warning-ignore:return_value_discarded
		get_tree().change_scene("res://Menus/Menu.tscn")
		



	




