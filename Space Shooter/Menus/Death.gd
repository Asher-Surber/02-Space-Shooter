extends Control

onready var global = get_node("/root/Global")

# Called when the node enters the scene tree for the first time.
func _ready():
	$FinalScore.text = "Final Score: " + str(global.score)


func _on_Play_Again_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res:///Level 1/Level1.tscn")
	

func _on_Credits_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://Menus/Credits.tscn")


func _on_Quit_pressed():
	get_tree().quit()
