*KartikAgaram
allEqual: exemplar
	^ self inject: true into: [:result :x| result and: (x = exemplar)]