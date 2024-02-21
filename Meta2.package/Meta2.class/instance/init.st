compiler
init
	"Initialize the runtime environment:
		- stack
		- input 
		- interperter
		- output
		- outStr
		- programCounter
		- opCodeTable "
		
	self stack: Stack new.
	
	self input: self i07SlashToOr.
	self interpreter: self c05SlashToOr.
	self output: String empty.
	
	self outStr: Character tab asString.
	self programCounter: 1.
	self initOpTable.