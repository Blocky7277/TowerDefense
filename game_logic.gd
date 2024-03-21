extends Node
@export var enemy_scene : PackedScene;


func generateEnemy():
	var enemy = enemy_scene.instantiate()
	enemy.speed =  int(randf() * (500-151) + 151)
	if (enemy.speed > 351):
		enemy.get_node("Enemy Area").get_node("Sprite").texture = enemy.textureArr[2];
	elif (enemy.speed > 251):
		enemy.get_node("Enemy Area").get_node("Sprite").texture = enemy.textureArr[0];
	else:
		enemy.get_node("Enemy Area").get_node("Sprite").texture = enemy.textureArr[1];
	$EnemyPath.add_child(enemy)

 
# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
	



func _on_spawner_timeout():
	generateEnemy() # Replace with function body.
