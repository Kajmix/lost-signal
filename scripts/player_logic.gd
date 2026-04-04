extends CharacterBody2D

@export var player_speed = 100

func _process(delta: float) -> void:
	var dir = Input.get_vector("left", "right", "up", "down")
	velocity = dir * player_speed
	move_and_slide()
