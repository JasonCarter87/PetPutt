extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#self.position = get_global_mouse_position()
	if global.ballMoving == true:
		$"Sprite".visible = false
	if global.ballMoving == false:
		$"Sprite".visible = true
		self.look_at(get_global_mouse_position())
		$"Sprite".look_at(Vector2(get_parent().position.x, get_parent().position.y))
	pass
