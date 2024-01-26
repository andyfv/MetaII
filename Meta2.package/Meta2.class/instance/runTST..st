op codes
runTST: aString
	"Delete initial whitespace"
	| i |
	
	self spaces. 
	self pflag: true.
	i := 1.
	
	[ (self pflag) & (i < aString size) ] whileTrue: [
			self pflag: ((aString at: i) copy asUppercase  
								= 
								((self inbuf at: (self inp + (i - 1))) copy asUppercase )).
			i := i + 1.
			].
	
	self pflag ifTrue: [ self inp: self inp + aString size ].