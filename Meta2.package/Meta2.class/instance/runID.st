op codes
runID
"	Mnemonic	: ID
	Purpose		: Identifier token
	Action		: Recognize an identifier as a sequence starting with a letter 
						followed by letters and/or digits. Store the identifier in the
						runtime variable token and skip over it in the input and set switch"

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