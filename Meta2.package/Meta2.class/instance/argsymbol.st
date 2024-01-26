private
argsymbol

	self symbolArgument: String empty.
	[ ((self ic at: self programCounter) ~= Character space) 
	& ((self ic at: self programCounter) ~= Character tab)
	] whileTrue: [ self programCounterIncrement ].
	
	[ ((self ic at: self programCounter) = Character space) 
	| ((self ic at: self programCounter) = Character tab)
	] whileTrue: [ self programCounterIncrement ].
		
	[ ((self ic at: self programCounter) isLetter) 
	| ((self ic at: self programCounter) isDigit)
	] whileTrue: [
			self symbolArgument: self symbolArgument , (self ic at: self programCounter) asString.
			self programCounterIncrement.
			].