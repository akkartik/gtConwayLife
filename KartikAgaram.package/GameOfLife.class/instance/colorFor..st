gtView
colorFor: aPoint
	| curr |
	curr := grid at: aPoint x at: aPoint y.
	^ (curr = 0) ifTrue: [Color cyan] ifFalse: [Color black]