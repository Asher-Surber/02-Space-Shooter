extends KinematicBody2D


var RedLaser = load("res://Level 1/RedLaser.tscn")
onready var EnemyLasers = get_node("/root/Level1/Enemy Lasers")
onready var Enemies = get_node("/root/Level1/Enemies")

var move_speed = 3

export var points = 10
export var hit_points = 1

func update_hit_points(number):
	hit_points += number

var p = 0
var positions = [
	Vector2(100,100),
	Vector2(924,100),
	Vector2(924,400),
	Vector2(100,400),
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
	var enemyLaser = RedLaser.instance()
	enemyLaser.position = position + Vector2(0,30)
	EnemyLasers.add_child(enemyLaser)

