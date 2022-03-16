extends Spatial


var coins=0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if coins==3:
		get_node("Control/TextEdit").text="You Win"
		get_tree().paused=true
