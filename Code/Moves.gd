extends TileMap;

enum TYPE{Normal, Over};

var moves: Dictionary = {
	"pos" : PackedVector2Array(),
	"type"  : TYPE,
}

@export var Type: TYPE = TYPE.Normal

func fetch_moves():
	var tiles = get_used_cells(0);
	moves.pos = PackedVector2Array(tiles);
	moves.type = Type
	return moves;

