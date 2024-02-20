op codes
runB
"	Mnemonic	: B AAA 	
	Purpose		: Branch
	Action		: Branch unconditionally to the location of the label AAA
						stored in the runtime variable symbolArg"
	
	self findLabel: self symbolArg.