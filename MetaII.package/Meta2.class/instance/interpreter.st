compiler
interpreter
	| switch icSize |
	switch := true.
	icSize := self ic size.
	
	self exitlevel: false.
	
	[switch] whileTrue: [
		[(self ic at: self pc) ~= Character tab ] whileTrue: [ self pcIncrement ].
		self pcIncrement.
		self interpretOp.
		exitlevel ifTrue: [ ^ self ]. 
		].