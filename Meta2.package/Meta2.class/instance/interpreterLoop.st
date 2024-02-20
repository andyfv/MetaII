compiler
interpreterLoop
"The interpreter loop checks if there is more input to be read"
	self exitlevel: false.

	[(self exitlevel not) & (self programCounter ~= -1)] whileTrue: [
		[ (self programCounter < self interpreter size) and:
		[ (self interpreter at: self programCounter) ~= Character tab]
		] whileTrue: [ self programCounterIncrement ].
	
		self interpretOp.
		]