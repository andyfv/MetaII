private
argstring
	self stringArg: String empty.
	[(self interpreter at: self programCounter) ~= $']
		whileTrue: [ self programCounterIncrement ].
	self programCounterIncrement.
	[(self interpreter at: self programCounter) ~= $']
		whileTrue: [ 
			self stringArg: self stringArg , (self interpreter at: self programCounter) asString.
			self programCounterIncrement.
			].
	self programCounterIncrement.
	