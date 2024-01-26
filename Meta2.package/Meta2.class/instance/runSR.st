op codes
runSR
	"String Token"
	self spaces. 
	self pflag: ((self inbuf at: self inp) = $').
	
	self pflag ifTrue: [
		self token: String empty.
		[self pflag] whileTrue: [
			self token: (self token , (self inbuf at: inp) asString).
			self inp: self inp + 1.
			self pflag: ((self inbuf at: self inp) ~= $') .
			].
		self token: (self token , $' asString).
		self inp: self inp + 1.
		self pflag: true.
		].