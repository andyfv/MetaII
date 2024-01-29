op codes
runEND
	
	self exitlevel: true.
	self pflag ifFalse: [ 
		self error: 'first rule ' 
							, (self stack top at: 3) asString
							, ' failed' 
							].