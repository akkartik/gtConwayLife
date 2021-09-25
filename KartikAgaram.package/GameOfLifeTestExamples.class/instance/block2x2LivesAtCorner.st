example
block2x2LivesAtCorner
	"https://www.conwaylife.com/wiki/Block"
	<gtExample>
	|x|
	x := GameOfLife new.
	x set: 1@1; set: 1@2; set: 2@1; set: 2@2.
	x step.
	self assert: x isEmpty not.
	^ x