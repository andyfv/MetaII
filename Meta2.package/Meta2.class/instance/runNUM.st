op codes
runNUM
	self spaces. 
	self pflag: ((self input at: self inputIndex) isDigit).
	
	self pflag ifTrue: [
		self token: String empty.
		self pflag whileTrue: [
			self token: self token , (self input at: self inputIndex).
			self inputIndex: self inputIndex + 1.
			self pflag: (input at: self inputIndex) isDigit .
			].
		self pflag: true.
		].