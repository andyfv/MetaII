op codes
runEND
"	Mnemonic	: END
	Purpose		: End of input source
	Action		: Denotes the end of the program. Set the runtime variable exitlevel
						to true. Signal error with the curent location of the program counter"
	
	self exitlevel: true.
	self pflag ifFalse: [ 
		self error: 'first rule ' 
							, (self stack top at: 3) asString
							, ' failed' 
							].