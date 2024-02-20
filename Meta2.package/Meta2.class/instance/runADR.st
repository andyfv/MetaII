op codes
runADR
"	Mnemonic	: ADR AAA
	Purpose		: Starting location
	Action		: Set the starting location by calling the label AAA stored in the
						runtime variable symbolArg. Push a new stackframe"

	self inputIndex: 1.
	self gnLabel: 1.
	self margin: 0.
	
	self stack push: self newStackFrame.
	
	self stack top at: 1 put: 0.							"GN1"
	self stack top at: 2 put: 0.							"GN2"
	self stack top at: 3 put: -1.							"Program Counter"
	self stack top at: 4 put: self symbolArg.		"Symbol Argument"
	self stack top at: 5 put: self margin.			"Left Margin"
	
	self findLabel: self symbolArg.