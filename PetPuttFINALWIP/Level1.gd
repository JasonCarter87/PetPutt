extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if global.loadedLevel != 1:
		go.destroy(self)
	if global.gameOver == true:
		global.loadedLevel = 0
		global.lastLevel = 1
	pass
