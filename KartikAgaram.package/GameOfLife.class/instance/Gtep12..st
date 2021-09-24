accessing
Gtep12: aPoint
	| x y neighbors count oldState newState |
	x := aPoint x.
	y := aPoint y.
	"obtain neighbors without going out of bounds"
	neighbors := grid1
		             atRows: y - 1
		             to: y + 1
		             columns: x - 1
		             to: x + 1
		             ifInvalid: 0.
	neighbors at: 2 at: 2 put: 0. "a cell isn't it own neighbor"
	"count neighbors"
	count := neighbors occurrencesOf: 1.
	"compute new state"
	oldState := grid1 at: y at: x.
	newState := count = 2 ifTrue: [grid1 at: y at: x] ifFalse: [count = 3 ifTrue: [1] ifFalse: [0]].
	"save new state"
	grid2 at: y at: x put: newState.