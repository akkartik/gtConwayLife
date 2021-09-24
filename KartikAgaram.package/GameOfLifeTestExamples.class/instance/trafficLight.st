accessing
trafficLight
	"https://www.conwaylife.com/wiki/Blinker returns to original shape after 2 steps"
	<gtExample>
	|x expected|
	x := GameOfLife new.
	x set: 2@3; set: 3@3; set: 4@3.
	expected := x grid copy.
	x step.
	self assert: (x grid) ~= expected.
	x step.
	self assert: (x grid) = expected.
	^ x