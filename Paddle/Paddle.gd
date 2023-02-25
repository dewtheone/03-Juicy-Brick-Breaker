extends KinematicBody2D

var target = Vector2.ZERO
export var speed = 10.0
var width = 0
var width_default = 0
var decay = 0.02

func _ready():
	width = $CollisionShape2D.get_shape().get_extents().x
	width_default = width
	target = Vector2(Global.VP.x / 2, Global.VP.y - 80)

func _physics_process(_delta):
	target.x = clamp(target.x, 0, Global.VP.x - 2*width)
	position = target


func _input(event):
	if event is InputEventMouseMotion:
		target.x += event.relative.x

func hit(_ball):
	$Timer.start()
	$Images/Sprite.visible = true
	$Images/Sprite2.visible = false




func _on_Timer_timeout():
	$Images/Sprite.visible = false
	$Images/Sprite2.visible = true
