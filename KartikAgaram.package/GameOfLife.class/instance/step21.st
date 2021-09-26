private
step21
	"Perform one step from grid2 to grid1."
	1 to: side do: [ :x |
		1 to: side do: [ :y |
			self step21: x@y.
		]
	].
	grid := grid1.