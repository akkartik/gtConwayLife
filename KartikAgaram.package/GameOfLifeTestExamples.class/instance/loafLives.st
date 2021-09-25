example
loafLives
	"https://www.conwaylife.com/wiki/Loaf remains unchanging"
	<gtExample>
	|x expected|
	x := GameOfLife new.
	x set: 2@4; set: 3@3; set: 4@2; set: 5@3; set: 5@4; set: 4@5; set: 3@5.
	expected := x grid copy.
	x step.
	self assert: (x grid) = expected.
	^ x