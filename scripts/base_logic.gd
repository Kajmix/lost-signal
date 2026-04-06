extends StaticBody2D

@onready var base_sprite : Sprite2D = $Sprite2D

func _on_body_inside_back_area(body: Node2D) -> void:
	if body.is_in_group("Player"):
		base_sprite.z_index = 7


func _on_body_outside_back_area(body: Node2D) -> void:
	if body.is_in_group("Player"):
		base_sprite.z_index = 0
