op codes
runID
	self spaces. 
	self pflag: ((self inbuf at: inp) isCharacter).
	
	self pflag ifTrue: [
		self token: ''.
		self pflag whileTrue: [
			self pflag: (self pflag , self inbuf at: inp).
			self inp: self inp + 1.
			self pflag: ((self inbuf at: inp) isCharacter) & ((self inbuf at: inp) isDigit).
			].
		self pflag: true.
		].