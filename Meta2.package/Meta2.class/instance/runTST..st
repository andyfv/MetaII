op codes
runTST: aString
	"Test aString from the interpreter against a string from the input code.
	If they match increment the input code pointer 'inp' with the size of the string"
	| inpString |

	"Delete initial whitespace"
	self spaces.
	self pflag: true.
	
	(inp + aString size - 1) <= inbuf size
		ifFalse: [ ^ self pflag: false ]
		ifTrue: [ inpString := inbuf copyFrom: inp to: (inp + aString size - 1) ].
		
	self pflag: (inpString asUppercase = aString asUppercase).
	self pflag ifTrue: [ self inp: self inp + aString size ].