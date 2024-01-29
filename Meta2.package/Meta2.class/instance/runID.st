op codes
runID

	self spaces. 
	self pflag: ((self input at: self inputIndex) isLetter).
	
	self pflag ifTrue: [
		self token: String empty.
		[self pflag] whileTrue: [
			self token: (self token , (self input at: self inputIndex) asString).
			self inputIndex: self inputIndex + 1.
			self pflag: ((self input at: self inputIndex) isLetter) | ((self input at: self inputIndex) isDigit).
			].
		self pflag: true.
		].