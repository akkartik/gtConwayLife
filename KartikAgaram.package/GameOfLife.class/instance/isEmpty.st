accessing
isEmpty
	^ grid asArray inject: true into: [:result :x| result and: (x = 0)]