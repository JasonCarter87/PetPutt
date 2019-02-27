extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if global.gameOver == true:
		$"Ball".visible = false
		$"GameOverSprite".visible = true
		if Input.is_action_just_pressed("restart_game"):
			go.restart_scene()
			global.gameOver = false
			global.bambooHealth = 3
	pass
