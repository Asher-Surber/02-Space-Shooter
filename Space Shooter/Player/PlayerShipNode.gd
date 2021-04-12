extends Node2D

onready var Ship = load("res://Player/PlayerShip.tscn")
onready var PlayerShip = get_node("/root/Game/PlayerShip")
#onready var PlayerShip1 = get_node("/root/Level1/PlayerShip/PlayerShip1")



func _on_Respawn_timeout():
	var ship = Ship.instance()
	ship.position = Vector2(500,550)
	PlayerShip.add_child(ship)
