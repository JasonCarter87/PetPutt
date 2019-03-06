extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var currentSprite = "BambooFull"
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#self.position = get_global_mouse_position()
	if global.bambooHealth ==3:
		self.currentSprite = "BambooFull"
		$"BambooSuperChomped".visible = false
	if global.bambooHealth ==2:
		self.currentSprite = "BambooChomped"
		$"BambooFull".visible = false
	if global.bambooHealth ==1:
		self.currentSprite = "BambooSuperChomped"
		$"BambooChomped".visible = false
	if global.gameOver == false:
		if global.ballMoving == true:
			self.get_node(currentSprite).visible = false
		if global.ballMoving == false:
			self.get_node(currentSprite).visible = true
			self.look_at(get_global_mouse_position())
			self.get_node(currentSprite).look_at(Vector2(get_parent().position.x, get_parent().position.y))
	pass
