output code
saveOutputAsMethod
	"Save the output code as a method"

	self class 
		compile: ('outputCode ^ ', Character cr asString , self output printString)
		classified: 'output code' asSymbol.