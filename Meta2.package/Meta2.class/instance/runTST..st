op codes
runTST: aString
	"Test aString from the interpreter against a string from the input code.
	If they match increment the input code pointer 'inp' with the size of the string"
	| inpString |

	"Delete initial whitespace"
	self spaces.
	self pflag: true.
	
	(self inputIndex + aString size - 1) <= self input size
		ifFalse: [ ^ self pflag: false ]
		ifTrue: [ inpString := self input copyFrom: self inputIndex to: (self inputIndex + aString size - 1) ].
		
	self pflag: (inpString asUppercase = aString asUppercase).
	self pflag ifTrue: [ self inputIndex: self inputIndex + aString size ].