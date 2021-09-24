accessing
square2x2LivesAtEdge
	<gtExample>
	|x|
	x := GameOfLife new.
	x set: 1@2; set: 1@3; set: 2@2; set: 2@3.
	x step.
	self assert: x isEmpty not.
	^ x