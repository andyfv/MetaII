private
argsymbol
	self symbolArgument: ''.
	((self ic at: self pc) ~= ' ') & ((self ic at: self pc) ~= '\t')
		whileTrue: [ self pc: self pc + 1 ].
	
	((self ic at: self pc) == ' ') | ((self ic at: self pc) = '\t')
		whileTrue: [ self pc: self pc + 1 ].
		
	((self ic at: self pc) isLetter) & ((self ic at: self pc) isInteger)
		ifTrue: [ 
			self symbolArgument: self symbolArgument , (self ic at: self pc).
			self pc: self pc + 1.
			].