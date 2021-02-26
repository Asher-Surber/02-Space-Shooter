extends Timer

onready var Game = get_node("/root/Level1")
onready var Level = load("res://Level 1/Level1.tscn")
#onready var ShipNode = get_node("/root/Game/Ship Container")
onready var Ship = load("res://Constant/PlayerShip.tscn")
onready var PlayerShip = get_node("/root/Level1/PlayerShip")
onready var respawn = get_node("/root/Level1/Respawn")
onready var Ship1 = get_node("/root/Level1/PlayerShip/PlayerShip1")


#func _on_Respawn_timeout():
#	var ship = Ship.instance()
#	ship.position = Ship.position
#	PlayerShip.add_child(ship)


func _on_Enemy_Lasers_body_entered(_body):
	respawn.start()
