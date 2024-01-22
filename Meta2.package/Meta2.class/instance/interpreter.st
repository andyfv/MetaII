compiler
interpreter
	| switch icSize |
	switch := true.
	icSize := self ic size.
	
	self exitlevel: false.
	
	[switch] whileTrue: [
		[(self ic at: self programCounter) ~= Character tab ] whileTrue: [ self programCounterIncrement ].
		self programCounterIncrement.
		self interpretOp.
		exitlevel ifTrue: [ ^ self ]. 
		].