extends Node2D;
class_name Piece;


var moves: PackedVector2Array;


func _ready():
	for child in get_children():
		if child is TileMap and child.visible:
			moves.append_array(child.fetch_moves())
		
		child.visibility_changed.connect(on_visibility_changed)


func on_visibility_changed():
	moves = PackedVector2Array()
	for child in get_children():
		if child is TileMap and child.visible:
			moves.append_array(child.fetch_moves())


func _input(event):
	if event is InputEventMouseButton:
		if event.is_pressed():
			var relative_mouse_grid_pos = ((get_global_mouse_position() - position)/32).round()
			print(relative_mouse_grid_pos)
			if relative_mouse_grid_pos in moves:
				move(relative_mouse_grid_pos)
				print("kkk")


func move(pos):
	position += pos*32



func _on_sprite_visibility_changed():
	pass # Replace with function body.
