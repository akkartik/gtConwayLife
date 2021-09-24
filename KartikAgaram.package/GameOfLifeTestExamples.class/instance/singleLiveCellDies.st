accessing
singleLiveCellDies
	<gtExample>
	|x|
	x := GameOfLife new.
	x set: 5@5.
	x step.
	self assert: x isEmpty.
	^ x