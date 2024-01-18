private
runBE
	| i j msg ctx |
	
	self pflag ifTrue: [ ^ self ].
	msg := 'SUNTAX ERROR:\n'
			, 'rule: ' , self stack at: (self stackFrame * self stackFrameSize + 3) , '\n'
			, 'last token: ' , self token , '\n'
			, 'out string: ' , self outStr , '\n'
			, 'INPUT: ' , '\n'.
			
	i := self inp - 20. (i < 0) 						ifTrue: [ i := 0 ].  
	j := self inp + 20. (j > self inbuf size) 	ifTrue: [ j := self inbuf size ].
	
	ctx := (self inbuf copyFrom: i to: inp)
			, (self inbuf copyFrom: inp to: j).
			
	msg := msg , ctx , '\n\n' , 'CHAR CODES:\n'.
	
	0 to: ctx size do: [ :e |
		(ctx at: e) isLowercase
			ifTrue: [ msg := msg , ctx at: e , '>' ]
			ifFalse: [ msg := msg , ctx at: e ]. 
		].
	
	msg := msg , '\n'.
	Transcript show: msg.
	self exitlevel: true.	