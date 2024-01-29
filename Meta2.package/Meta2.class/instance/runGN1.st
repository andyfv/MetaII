op codes
runGN1
	
	(self stack top at: 1) = 0 ifTrue: [ 
			self stack top at: 1 put: self gnLabel.
			self gnLabel: self gnLabel + 1.
			].
	
	self out: ('L' , (self stack top at: 1) asString)
		