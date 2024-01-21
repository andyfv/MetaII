op codes
runSR
	"String Token"
	self spaces. 
	self pflag: ((self inbuf at: inp) isDigit).
	
	self pflag ifTrue: [
		self token: ''.
		self pflag whileTrue: [
			self token: self token , (self inbuf at: inp).
			self inp: self inp + 1.
			self pflag: (inbuf at: inp) isDigit .
			].
		self pflag: true.
		].