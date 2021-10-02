gtView
gtViewFor: aView
	"Scalable pixel-based view"
	<gtView>
	^aView explicit
		stencil: [
			| root |
			root := BlElement new.
			root constraintsDo: [ :c |
				c horizontal fitContent.
				c vertical fitContent ].
			root layout: BlGridLayout horizontal.
			root layout cellSpacing: 2; columnCount: side.
			1 to: side do: [ :x |
				1 to: side do: [ :y |
					| newChild |
					newChild := BlElement new.
					newChild size: 4@4.
					newChild geometry: BlRoundedRectangleGeometry new.
					newChild background: (self colorFor: x@y).
					root addChild: newChild.
				]
			].
			root
		]