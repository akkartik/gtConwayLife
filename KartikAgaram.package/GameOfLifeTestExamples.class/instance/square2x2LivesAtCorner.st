example
square2x2LivesAtCorner
	<gtExample>
	|x|
	x := GameOfLife new.
	x set: 1@1; set: 1@2; set: 2@1; set: 2@2.
	x step.
	self assert: x isEmpty not.
	^ x