gtView
colorFor: aPoint
	| curr |
	curr := grid1 at: aPoint x at: aPoint y.
	^ (curr = 0) ifTrue: [Color cyan] ifFalse: [Color black]