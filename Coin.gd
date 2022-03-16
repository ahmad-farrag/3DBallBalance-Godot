extends Area


onready var txt=get_parent().get_node("Control/TextEdit")
onready var player=get_parent().get_node("PlayerBall")
# Called when the node enters the scene tree for the first time.
func _ready():
	txt.text="Coins : "+str(get_parent().coins)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Coin_body_entered(body):
	if body==player:
		get_parent().coins+=1
		txt.text="Coins : "+str(get_parent().coins)
		get_parent().remove_child(self)
