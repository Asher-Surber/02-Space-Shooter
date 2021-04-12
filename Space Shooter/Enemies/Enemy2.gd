extends KinematicBody2D


var GreenLaser = load("res://Enemies/GreenLaser.tscn")
onready var EnemyLasers = get_node("/root/Game/Enemy Lasers")

var move_speed = 5

var p = 0
var positions = [
	Vector2(100,100),
	Vector2(924,100),
]
var offset = Vector2.ZERO

func _ready():
	offset = position
	position = positions[0] + offset
	p = 1


func _on_Move_timeout():
	$Tween.interpolate_property(self, "position", position, positions[p] + offset, move_speed, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	$Tween.start()
	p = wrapi(p+1, 0, len(positions))


func _on_Shoot_timeout():
	var enemyLaser = GreenLaser.instance()
	enemyLaser.position = position + Vector2(0,30)
	EnemyLasers.add_child(enemyLaser)

