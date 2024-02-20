op codes
runNUM
"	Mnemonic	: NUM
	Purpose		: Number token
	Action		: Recognize a number as a sequence of digits. Store the number
						in the runtime variable token and skip over it in the input.
						Then set switch"
			
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