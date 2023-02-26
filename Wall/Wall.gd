extends StaticBody2D

var decay = 0.01

func _ready():
	pass

func _physics_process(_delta):
	pass

func hit(_ball):
	var wall_audio = get_node_or_null("/root/Game/Wall_Audio")
	if wall_audio != null:
		wall_audio.play()
