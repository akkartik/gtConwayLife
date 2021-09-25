example
block2x2LivesAtEdge
	"https://www.conwaylife.com/wiki/Block"
	<gtExample>
	|x|
	x := GameOfLife new.
	x set: 1@2; set: 1@3; set: 2@2; set: 2@3.
	x step.
	self assert: x isEmpty not.
	^ x