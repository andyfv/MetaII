private
argsymbol
	self symbolArgument: ''.
	((self ic at: self programCounter) ~= ' ') & ((self ic at: self programCounter) ~= '\t')
		whileTrue: [ self programCounter: self programCounter + 1 ].
	
	((self ic at: self programCounter) == ' ') | ((self ic at: self programCounter) = '\t')
		whileTrue: [ self programCounter: self programCounter + 1 ].
		
	((self ic at: self programCounter) isLetter) & ((self ic at: self programCounter) isInteger)
		ifTrue: [ 
			self symbolArgument: self symbolArgument , (self ic at: self programCounter).
			self programCounter: self programCounter + 1.
			].