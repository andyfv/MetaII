input code
loadInterpreter
	| interpreterFileName |
	interpreterFileName := 'meta2/interpreter.txt'.
	
	^ self loadFile: interpreterFileName.