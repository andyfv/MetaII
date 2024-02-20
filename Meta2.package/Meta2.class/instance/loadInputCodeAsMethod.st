loadCode
loadInputCodeAsMethod
	"Temporary solution to load the input code and store it as a method"

	self class 
		compile: ('inputCode ^ ', Character cr asString , self loadInputCode printString )
		classified: 'input code' asSymbol.