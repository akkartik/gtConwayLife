example
emptyGrid
	<gtExample>
	|x|
	x := GameOfLife new.
	self assert: x isEmpty.
	^ x