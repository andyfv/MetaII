op codes
runBF
"	Mnemonic	: BF AAA
	Purpose		: Branch if false
	Action		: If the switch pflag is set to false branch to the label AAA
						stored in the runtime variable symbolArg"
		
	self pflag ifFalse: [ self findLabel: self symbolArg ]