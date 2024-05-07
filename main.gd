extends Node2D

var food: PackedScene = preload("res://Food.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass




func _on_timer_timeout():
	var food_scene = food.instantiate()
	var spawn_location = $Path2D2/PathFollow2D
	spawn_location.progress_ratio = randf() 
	food_scene.global_position = spawn_location.global_position
	
	
	add_child(food_scene)
	
	




