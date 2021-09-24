accessing
square2x2Lives
	<gtExample>
	|x|
	x := GameOfLife new.
	x set: 2@2; set: 2@3; set: 3@2; set: 3@3.
	x step.
	self assert: x isEmpty not.
	^ x