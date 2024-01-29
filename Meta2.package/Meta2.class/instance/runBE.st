op codes
runBE
	| i j msg ctx |
	
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
	
	ctx := (self input copyFrom: i to: self inputIndex)
			, (self input copyFrom: self inputIndex to: j).
			
	msg := msg , ctx , '\n\n' , 'CHAR CODES:\n'.
	
	0 to: ctx size do: [ :e |
		(ctx at: e) isLowercase
			ifTrue: [ msg := msg , ctx at: e , '>' ]
			ifFalse: [ msg := msg , ctx at: e ]. 
		].
	
	msg := msg , '\n'.
	Transcript show: msg.
	self exitlevel: true.	