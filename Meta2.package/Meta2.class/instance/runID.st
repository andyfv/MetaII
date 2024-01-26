op codes
runID

	self spaces. 
	self pflag: ((self inbuf at: inp) isLetter).
	
	self pflag ifTrue: [
		self token: ''.
		[self pflag] whileTrue: [
			self token: (self token , (self inbuf at: inp) asString).
			self inp: self inp + 1.
			self pflag: ((self inbuf at: inp) isLetter) | ((self inbuf at: inp) isDigit).
			].
		self pflag: true.
		].