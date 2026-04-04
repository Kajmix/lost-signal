extends CharacterBody2D

@onready var player_sprite : AnimatedSprite2D = $AnimatedSprite2D

@export var player_speed = 100

func _physics_process(delta: float) -> void:
	var animation = "down"
	var dir = Input.get_vector("left", "right", "up", "down")
	if Input.is_action_pressed("left"):
		animation = "left"
	if Input.is_action_pressed("right"):
		animation = "right"
	if Input.is_action_pressed("up"):
		animation = "up"
	if Input.is_action_pressed("down"):
		animation = "down"
	if player_sprite.animation != animation:
		player_sprite.animation = animation
	velocity = dir * player_speed
	move_and_slide()
