op codes
runTST: aString
"	Mnemonic	: TST 'string'
	Purpose		: Test for string in input
	Action		: Compare a string from input to aString given as an argument.
						If they match skip over it in the input and set switch.
						Otherwise reset switch"
	
	| inpString |

	"Delete initial whitespace"
	self spaces.
	self pflag: true.
	
	(self inputIndex + aString size - 1) <= self input size
		ifFalse: [ ^ self pflag: false ]
		ifTrue: [ inpString := self input copyFrom: self inputIndex to: (self inputIndex + aString size - 1) ].
		
	self pflag: (inpString asUppercase = aString asUppercase).
	self pflag ifTrue: [ self inputIndex: self inputIndex + aString size ].