extends AudioStreamPlayer
onready var Laser = load("res://Constant/Laser.tscn")
onready var Lasers = get_node("/root/Level1/Lasers")
var Explosion = load("res://Constant/Explosion.tscn")
onready var Explosions = get_node("/root/Level1/Explosions")
onready var EnemyLasers = get_node("/root/Level1/Enemy Lasers")


func _on_Explosion_tree_entered():
	play()
