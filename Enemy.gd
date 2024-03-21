extends PathFollow2D
@export var speed = 400;
@export var textureArr = [load("res://car.png"), load("res://car2.png"), load("res://car3.png")]



# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	progress += delta*speed;
	speed -= 1
	check_color()
	if(speed <= 0):
		queue_free()


func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
	
func check_color():
	if(speed < 351):
		$"Enemy Area/Sprite".texture = textureArr[0]
	elif(speed < 251):
		$"Enemy Area/Sprite".texture = textureArr[1]
	else:
		$"Enemy Area/Sprite".texture = textureArr[1]

func _on_enemy_area_body_entered(body):
	body.queue_free()
	
