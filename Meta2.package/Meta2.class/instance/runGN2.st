op codes
runGN2
	
	(self stack top at: 2) = 0 ifTrue: [
		self stack top at: 2 put: self gnLabel.
		self gnLabel: self gnLabel + 1.
		].
	
	self out: ('L' , (self stack top at: 2) asString)	
		