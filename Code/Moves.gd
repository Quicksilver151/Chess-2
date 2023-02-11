extends TileMap;


func fetch_moves():
	var tiles = get_used_cells(0);
	var moves = PackedVector2Array(tiles);
	return moves;

