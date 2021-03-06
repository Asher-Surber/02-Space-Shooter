extends Control
onready var Life = get_node("/root/Game/HUD/Lives")
onready var global = get_node("/root/Global")
onready var Life1 = get_node("/root/Game/HUD/Life1")
onready var Life2 = get_node("/root/Game/HUD/Life2")
onready var Life3 = get_node("/root/Game/HUD/Life3")
var Explosion = load("res://Explosions/Explosion.tscn")
onready var Explosions = get_node("/root/Game/Explosions")
onready var Enemies = get_node("/root/Game/Enemies")
onready var Level2 = load("res://Level2.tscn")
#onready var Level2Node = get_node("/root/Level2")

func _ready():
	update_score(0)
	update_lives(0)


func update_score(s):
	global.score += s
	$Score.text = "Score: " + str(global.score)
	if global.score == 70 and global.level != 2:
		global.level = 2
# warning-ignore:return_value_discarded
		get_tree().change_scene("res://Level2.tscn")

func update_lives(l):
	global.lives += l
	$Lives.text = "Lives: "
	if global.lives == 2:
		Life3.queue_free()
	if global.lives == 1:
		Life2.queue_free()
	if global.lives == 0:
		Life1.queue_free()
	if global.lives < 0:
# warning-ignore:return_value_discarded
		get_tree().change_scene("res://Menus/Death.tscn")
