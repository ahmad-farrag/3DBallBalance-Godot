extends RigidBody


export var speed=10

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
#	if Input.action_press("MoveF"):
#		set_axis_velocity(Vector3.FORWARD*speed)
#	if Input.action_press("MoveB"):
#		set_axis_velocity(Vector3.BACK*speed)
#	if Input.action_press("MoveR"):
#		set_axis_velocity(Vector3.RIGHT*speed)
	var horizontal=Input.get_action_strength("MoveR")-Input.get_action_strength("MoveL")
	var vertical=Input.get_action_strength("MoveB")-Input.get_action_strength("MoveF")
	set_axis_velocity(Vector3(horizontal,0,vertical))



func _on_LoseArea_body_entered(body):
	if body==self:
		get_parent().get_node("Control/TextEdit").text="You Lose"
		get_tree().paused=true
