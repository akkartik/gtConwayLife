accessing
step
	grid = grid1 ifTrue: [ self step12] ifFalse: [self step21]