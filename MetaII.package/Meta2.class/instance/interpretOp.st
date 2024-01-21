compiler
interpretOp
	| oc op switch |
	
	oc := self pc.
	op := ''.
	
	(((oc < self ic size) and: 
	[(self ic at: oc) isLetter]) and: 
	[(self ic at: oc) isInteger])
		ifTrue: [ op := op , self ic at: oc. oc := oc + 1. ].
		
	switch := Dictionary new.
	switch add: 'ADR' 	-> [ self symbolArgument. self runADR. ^ self ].
	switch add: 'B' 		-> [ self symbolArgument. self runB. ^ self ].
	switch add: 'BT' 		-> [ self symbolArgument. self runBT. ^ self ].
	switch add: 'BF' 		-> [ self symbolArgument. self runBF. ^ self ].
	switch add: 'BE' 		-> [ self runBE. ^ self ].
	switch add: 'CLL' 	-> [ self symbolArgument. self runCLL. ^ self ].
	switch add: 'CL' 		-> [ self argstring. self runCL: self stringarg. ^ self ].
	switch add: 'CI' 		-> [ self runCI. ^ self ].
	switch add: 'END' 	-> [ self runEND. ^ self ].
	switch add: 'GN1' 	-> [ self runGN1. ^ self ].
	switch add: 'GN2' 	-> [ self runGN2. ^ self ].
	switch add: 'ID' 		-> [ self runID. ^ self ].
	switch add: 'LB' 		-> [ self runLB. ^ self ].
	switch add: 'OUT' 	-> [ self runOUT. ^ self ].
	switch add: 'R' 		-> [ self runR. ^ self ].
	switch add: 'SET' 	-> [ self runSET. ^ self ].
	switch add: 'SR' 		-> [ self runSR. ^ self ].
	switch add: 'TST' 	-> [ self argstring. self runTST: self stringarg. ^ self ].
		
	switch at: op ifAbsent: [ 
		Transcript show: 'ERROR: unknown interpreter op \' , op , '\'.
		self exitlevel: true. 
		]