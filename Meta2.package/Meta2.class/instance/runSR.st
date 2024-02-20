op codes
runSR
"	Mnemonic	: SR
	Purpose		: String token
	Action		: Recognize a string by testing if the input start with a single 
						quote followed by a sequence of any characters until another 
						single quote is found. Then skip over the string in the input and
						set switch"
			
	self spaces. 
	self pflag: ((self input at: self inputIndex) = $').
	
	self pflag ifTrue: [
		self token: String empty.
		[self pflag] whileTrue: [
			self token: (self token , (self input at: self inputIndex) asString).
			self inputIndex: self inputIndex + 1.
			self pflag: ((self input at: self inputIndex) ~= $') .
			].
		self token: (self token , $' asString).
		self inputIndex: self inputIndex + 1.
		self pflag: true.
		].