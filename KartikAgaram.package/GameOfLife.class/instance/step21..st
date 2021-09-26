private
step21: aPoint
	"Perform a step for a single point in grid2, saving new state in grid1"
	| x y neighbors count oldState newState |
	x := aPoint x.
	y := aPoint y.
	"obtain neighbors without going out of bounds"
	neighbors := grid2 atRows: y-1 to: y+1 columns: x-1 to: x+1
		             ifInvalid: 0.
	neighbors at: 2 at: 2 put: 0.    "a cell isn't its own neighbor"
	"count neighbors"
	count := neighbors occurrencesOf: 1.
	"compute new state"
	oldState := grid2 at: y at: x.
	newState := count = 2 ifTrue: [oldState] ifFalse: [count = 3 ifTrue: [1] ifFalse: [0]].
	"save new state"
	grid1 at: y at: x put: newState.