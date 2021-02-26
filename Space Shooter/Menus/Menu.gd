extends Control

onready var Game = load("res://Level 1/Level1.tscn")

func _ready():
	pass

func _on_Play_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res:///Level 1/Level1.tscn")


func _on_Credits_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://Menus/Credits.tscn")


func _on_Quit_pressed():
	get_tree().quit()
