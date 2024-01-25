compiler
interpretOp
	| oc op switch |
	
	oc := self programCounter.
	op := ''.
	
	[ (oc < self ic size) and: 
	( ((self ic at: oc) isInteger) or: 
	[ (self ic at: oc) isLetter ]
	)] whileTrue: [ op := op , (self ic at: oc) asString . oc := oc + 1 ].
	
	switch := Dictionary new.
	switch add: 'ADR' 	-> [ self argsymbol. self runADR. ^ self ].
	switch add: 'B' 		-> [ self argsymbol. self runB. ^ self ].
	switch add: 'BT' 	-> [ self argsymbol. self runBT. ^ self ].
	switch add: 'BF' 	-> [ self argsymbol. self runBF. ^ self ].
	switch add: 'BE' 	-> [ self runBE. ^ self ].
	switch add: 'CLL' 	-> [ self argsymbol. self runCLL. ^ self ].
	switch add: 'CL' 	-> [ self argstring. self runCL: self stringarg. ^ self ].
	switch add: 'CI' 	-> [ self runCI. ^ self ].
	switch add: 'END' 	-> [ self runEND. ^ self ].
	switch add: 'GN1' 	-> [ self runGN1. ^ self ].
	switch add: 'GN2' 	-> [ self runGN2. ^ self ].
	switch add: 'ID' 	-> [ self runID. ^ self ].
	switch add: 'LB' 	-> [ self runLB. ^ self ].
	switch add: 'OUT' 	-> [ self runOUT. ^ self ].
	switch add: 'R' 		-> [ self runR. ^ self ].
	switch add: 'SET' 	-> [ self runSET. ^ self ].
	switch add: 'SR' 	-> [ self runSR. ^ self ].
	switch add: 'TST' 	-> [ self argstring. self runTST: self stringarg. ^ self ].
		
	switch at: op 
				ifPresent: [ :b | b value ]
				ifAbsent: [ 
					Transcript show: 'ERROR: unknown interpreter op \' , op , '\'.
					self exitlevel: true. 
					]