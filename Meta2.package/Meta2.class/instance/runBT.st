op codes
runBT
"	Mnemonic	: BT AAA
	Purpose		: Branch if true
	Action		: If the switch pflag is set to true branch to the label AAA
						stored in the runtime variable symbolArg"
	
	self pflag ifTrue: [ self findLabel: self symbolArg ]