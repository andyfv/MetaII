private
argsymbol

	self symbolArg: String empty.
	[ ((self interpreter at: self programCounter) ~= Character space) 
	& ((self interpreter at: self programCounter) ~= Character tab)
	] whileTrue: [ self programCounterIncrement ].
	
	[ ((self interpreter at: self programCounter) = Character space) 
	| ((self interpreter at: self programCounter) = Character tab)
	] whileTrue: [ self programCounterIncrement ].
		
	[ ((self interpreter at: self programCounter) isLetter) 
	| ((self interpreter at: self programCounter) isDigit)
	] whileTrue: [
			self symbolArg: self symbolArg 
											, (self interpreter at: self programCounter) asString.
			self programCounterIncrement.
			].