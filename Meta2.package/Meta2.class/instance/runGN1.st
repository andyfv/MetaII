op codes
runGN1
"	Mnemonic	: GN1
	Purpose		: Generate Label 1
	Action		: Generate unique label if not initialize yet and output it"
	
	(self stack top at: 1) = 0 ifTrue: [ 
			self stack top at: 1 put: self gnLabel.
			self gnLabel: self gnLabel + 1.
			].
	
	self out: ('L' , (self stack top at: 1) asString)
		