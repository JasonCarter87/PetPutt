extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("restart_game") && global.gameOver == true:
		global.gameOver = false
		global.bambooHealth = 3
		global.loaded = false
		global.loadedLevel = global.lastLevel
		
	if Input.is_action_just_pressed("restart_game") && global.won == true:
		global.gameOver = false
		global.bambooHealth = 3
		global.loaded = false
		global.loadedLevel = 1
		global.lastLevel = 1
		global.won = false
		
	if global.loaded == false:
		if global.loadedLevel == 0:
			go.spawn_instance("LoserLevel")
			global.loaded = true
		if global.loadedLevel == 1:
			go.spawn_instance("Level1")
			global.loaded = true
		if global.loadedLevel == 2:
			go.spawn_instance("Level2")
			global.loaded = true
		if global.loadedLevel == 3:
			go.spawn_instance("WinnerLevel")
			global.won = true
			global.loaded = true
	pass
