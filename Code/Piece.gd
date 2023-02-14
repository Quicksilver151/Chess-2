extends Node2D;
class_name Piece;

var moves: PackedVector2Array;

func _ready():
	update_moves()
	for child in get_children():
		child.visibility_changed.connect(update_moves)


func update_moves():
	moves = PackedVector2Array()
	for child in get_children():
		if child is TileMap and child.visible:
			moves.append_array(child.fetch_moves().pos)


func _input(event):
	if event is InputEventMouseButton:
		if event.is_pressed():
			var relative_mouse_grid_pos = ((get_global_mouse_position() - position)/32).round()
			print(relative_mouse_grid_pos)
			if relative_mouse_grid_pos in moves and is_move_valid():
				move(relative_mouse_grid_pos)
				print("kkk")

func is_move_valid():
	#todo
	return true

func move(pos):
	position += pos*32

