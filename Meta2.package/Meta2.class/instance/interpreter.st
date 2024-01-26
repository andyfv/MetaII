compiler
interpreter
	| switch icSize |
	switch := true.
	icSize := self ic size.
	
	self exitlevel: false.
	
	[switch] whileTrue: [
		[    ((self ic at: self programCounter) ~= Character tab) 
		and: [ self programCounter < self ic size ]
		] whileTrue: [ self programCounterIncrement ].
		self programCounterIncrement.
		self interpretOp.
		self exitlevel 
			ifTrue: [ switch := false ]
			ifFalse: [ switch := true ].
		].