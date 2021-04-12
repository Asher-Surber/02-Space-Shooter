extends AudioStreamPlayer
onready var Laser = load("res://Player/Laser.tscn")
onready var Lasers = get_node("/root/Game/Lasers")
var Explosion = load("res://Explosions/Explosion.tscn")
onready var Explosions = get_node("/root/Game/Explosions")
onready var EnemyLasers = get_node("/root/Game/Enemy Lasers")


func _on_Explosion_tree_entered():
	play()
