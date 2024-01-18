compiler
interpreter
	| switch |
	switch := true.
	
	self exitlevel: false.
	
	switch whileTrue: [
		(self ic at: self pc) whileTrue: [ self pc: self pc + 1. ].
		self pc: self pc + 1.
		self interpretOp.
		exitlevel ifTrue: [ ^ self ]. 
		].