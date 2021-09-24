accessing
step12
	1 to: side do: [ :x |
		1 to: side do: [ :y |
			self step12: x@y.
		]
	].
	grid := grid2.