extends Node
@onready var obsticles_tilemap : TileMapLayer = $obsticles
@export var r : int = 197
func _ready() -> void:
	for y in range(-r, r+1):
		for x in range(-r, r+1):
			if x*x + y*y <= r*r:
				if randi_range(0,60) == 1:
					obsticles_tilemap.set_cell(
						Vector2i(x, y),
						0,
						Vector2i(
							randi_range(0,1)
							,
							randi_range(0,2)
							)
						)
