accessing
step21
	1 to: side do: [ :x |
		1 to: side do: [ :y |
			self step21: x@y.
		]
	].
	grid := grid1.