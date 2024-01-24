private
argsymbol
	self symbolArgument: ''.
	[ ((self ic at: self programCounter) ~= Character space) 
	& ((self ic at: self programCounter) ~= Character tab)
	] whileTrue: [ self programCounter: self programCounter + 1 ].
	
	[ ((self ic at: self programCounter) == Character space) 
	| ((self ic at: self programCounter) = Character tab)
	] whileTrue: [ self programCounter: self programCounter + 1 ].
		
	[ ((self ic at: self programCounter) isLetter) 
	| ((self ic at: self programCounter) isInteger)
	] whileTrue: [
			self symbolArgument: self symbolArgument , (self ic at: self programCounter) asString.
			self programCounterIncrement.
			].