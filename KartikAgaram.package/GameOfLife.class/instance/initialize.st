initialization
initialize
	"Conway's Game of Life is a Cellular Automaton that synchronously updates a Manhattan `grid` of two-state cells based on the states of their nearest neighbors."
	side := 10.
	"To perform updates _synchronously_ over the entire grid, we'll maintain storage for two copies of the grid, `grid1` and `grid2`. That way we can store new states in `grid2` while we iterate over states in `grid1`, and vice versa."
	grid1 := (Array2D rows: side columns: side element: 0).
	grid2 := (Array2D rows: side columns: side element: 0).
	grid := grid1.