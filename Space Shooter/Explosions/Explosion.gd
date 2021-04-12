extends AnimatedSprite

onready var Laser = load("res://Player/Laser.tscn")
onready var Lasers = get_node("/root/Game/Lasers")
onready var Explosion = load("res://Explosions/Explosion.tscn")
onready var Explosions = get_node("/root/Game/Explosions")
onready var EnemyLasers = get_node("/root/Game/Enemy Lasers")
onready var RedLaser = load("res://Enemies/RedLaser.tscn")

#func _enter_tree():
	#play()

func _on_Explosion_animation_finished():
	queue_free()


func _on_Explosion_tree_entered():
	play()
