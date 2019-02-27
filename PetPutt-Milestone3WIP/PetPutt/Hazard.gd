extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.rotate(.05)
	pass



func _on_hazardArea_body_entered(body):
	if body.get_name() == "Ball":
		global.gameOver = true
	pass # Replace with function body.
