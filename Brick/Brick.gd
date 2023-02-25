extends StaticBody2D

var score = 0
var new_position = Vector2.ZERO
var dying = false


func _ready():
	randomize()
	position = new_position

func _physics_process(_delta):
	if dying:
		queue_free()

func hit(_ball):
	die()

func die():
	dying = true
	collision_layer = 0
	$ColorRect.hide()
	Global.update_score(score)
	if not Global.feverish:
		Global.update_fever(score)
	get_parent().check_level()
	
