loadCode
loadInterpreterAsMethod
	"Temporary solution to load the interpreter code and stores it as a method"

	self class 
		compile: ('interpreterCode ^ ', Character cr asString , self loadInterpreter printString )
		classified: 'input code' asSymbol.