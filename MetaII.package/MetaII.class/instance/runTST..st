private
runTST: aString
	"Delete initial whitespace"
	| i |
	
	self spaces. 
	self pflag: true.
	i := 0.
	
	[ (self pflag) & (i < aString size) ] 
		whileTrue: [
			self pflag: ((aString at: i) copy translateToUppercase 
								= 
							  ((self inbuf at: (inp + i)) copy translateToUppercase )).
			i := i + 1.
			].
	
	self pflag ifTrue: [ inp := inp + aString size ].