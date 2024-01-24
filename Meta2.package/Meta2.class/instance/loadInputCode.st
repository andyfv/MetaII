input code
loadInputCode
	| inputFileName |
	inputFileName := 'meta2/input.txt'.
	
	^ self loadFile: inputFileName.