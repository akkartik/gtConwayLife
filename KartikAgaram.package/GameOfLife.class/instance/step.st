evolution
step
	"Alternately update grid1 into grid2 and back."
	grid = grid1 ifTrue: [ self step12] ifFalse: [self step21]