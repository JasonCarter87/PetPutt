extends RigidBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	self.bounce = .6
	self.gravity_scale = 0
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("launch_ball"):
		var differenceVector = self.position - get_global_mouse_position()
		var directionVector = differenceVector.normalized()
		var speed = 400 
		var launchVector = directionVector * speed
		self.linear_velocity = launchVector
	pass
