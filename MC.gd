extends CharacterBody2D

@export var speed: int = 10

var direction: Vector2 = Vector2.ZERO

func _unhandled_input(event):
	if event.is_action_pressed("Right"):
		direction.x = 1
	if event.is_action_released("Right"):
		direction.x = 0
	if event.is_action_pressed("Left"):
		direction.x = -1
	if event.is_action_released("Left"):
		direction.x = 0

func _process(delta):

		global_position += direction * speed
	
	



	
	
	


func _on_food_area_entered(area):
	queue_free()
