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
		
		self programCounter = 550 ifTrue: [ self halt ].
		
		self symbolArgument ifNotNil: [
			Transcript show: (Character cr asString 
								  , self programCounter asString 
								  , ': ' , self symbolArgument
								  , self outbuf
								  ,Character cr  asString). ].
							
		self interpretOp.
		self exitlevel 
			ifTrue: [ switch := false ]
			ifFalse: [ switch := true ].
		].