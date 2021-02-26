extends AnimatedSprite

onready var Laser = load("res://Constant/Laser.tscn")
onready var Lasers = get_node("/root/Level1/Lasers")
onready var Explosion = load("res://Constant/Explosion.tscn")
onready var Explosions = get_node("/root/Level1/Explosions")
onready var EnemyLasers = get_node("/root/Level1/Enemy Lasers")
onready var RedLaser = load("res://Level 1/RedLaser.tscn")

#func _enter_tree():
	#play()

func _on_Explosion_animation_finished():
	queue_free()


func _on_Explosion_tree_entered():
	play()
