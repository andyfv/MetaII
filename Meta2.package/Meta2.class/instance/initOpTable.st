compiler
initOpTable
	"Initialize the Meta II op codes"

	| table |
	table := Dictionary new.
	table add: 'ADR'	-> [ self argsymbol. self runADR ].
	table add: 'B'		-> [ self argsymbol. self runB ].
	table add: 'BT'		-> [ self argsymbol. self runBT ].
	table add: 'BF'		-> [ self argsymbol. self runBF ].
	table add: 'BE'		-> [ self runBE ].
	table add: 'CLL'	-> [ self argsymbol. self runCLL ].
	table add: 'CL'		-> [ self argstring. self runCL: self stringArg ].
	table add: 'CI'		-> [ self runCI ].
	table add: 'END'	-> [ self runEND ].
	table add: 'GN1'	-> [ self runGN1 ].
	table add: 'GN2'	-> [ self runGN2 ].
	table add: 'ID'		-> [ self runID ].
	table add: 'LB'		-> [ self runLB ].
	table add: 'OUT'	-> [ self runOUT ].
	table add: 'R'		-> [ self runR ].
	table add: 'SET'	-> [ self runSET ].
	table add: 'SR'		-> [ self runSR ].
	table add: 'TST'	-> [ self argstring. self runTST: self stringArg ].
	
	opCodeTable := table.