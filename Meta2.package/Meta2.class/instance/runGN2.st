op codes
runGN2
"	Mnemonic	: GN2
	Purpose		: Generate Label 2
	Action		: Generate unique label if not initialize yet and output it"
	
	(self stack top at: 2) = 0 ifTrue: [
		self stack top at: 2 put: self gnLabel.
		self gnLabel: self gnLabel + 1.
		].
	
	self out: ('L' , (self stack top at: 2) asString)	
		