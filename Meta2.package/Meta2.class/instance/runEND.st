op codes
runEND
	
	self exitlevel: true.
	self pflag ifFalse: [ 
		self error: 'first rule ' 
							, (self stack at: (self stackFrame * self stackFrameSize + 3)) 
							, ' failed' 
							].