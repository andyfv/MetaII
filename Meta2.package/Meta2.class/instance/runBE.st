op codes
runBE
"	Mnemonic 	: BE
	Purpose		: Branch to error if false
	Action 		: Report the error status and halt if the switch pflag is set to false"
	
	| i j msg context |
	
	self pflag ifTrue: [ ^ self ].
	msg := 'SUNTAX ERROR:'
			, Character cr
			, 'rule: ' , (self stack top at: 3) asString
			, Character cr
			, 'last token: ' , self token
			, Character cr
			, 'out string: ' , self outStr
			, Character cr
			, 'INPUT: '
			, Character cr.
			
	i := self inputIndex - 20. (i < 0) 						ifTrue: [ i := 0 ].  
	j := self inputIndex + 20. (j > self input size) 	ifTrue: [ j := self input size ].
	
	context := (self input copyFrom: i to: self inputIndex)
			    , (self input copyFrom: self inputIndex to: j).
			
	msg := msg , context , '\n\n' , 'CHAR CODES:\n'.
	
	0 to: context size do: [ :e |
		(context at: e) isLowercase
			ifTrue: [ msg := msg , context at: e , '>' ]
			ifFalse: [ msg := msg , context at: e ]. 
		].
	
	msg := msg , '\n'.
	Transcript show: msg.
	self exitlevel: true.	