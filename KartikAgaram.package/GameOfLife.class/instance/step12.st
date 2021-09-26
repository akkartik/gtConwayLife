private
step12
	"Perform one step from grid1 to grid2."
	1 to: side do: [ :x |
		1 to: side do: [ :y |
			self step12: x@y.
		]
	].
	grid := grid2.