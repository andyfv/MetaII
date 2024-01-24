test - loading
testLoadInterpreterAsMethod
	"Test that the loaded interpreter code is in the class method dictionary
	and that it is not empty"
	| meta |
	meta := Meta2 new.
	meta loadInterpreterAsMethod.

	self assert: (Meta2 methodDict includesKey: #interpreterCode).
	self assert: (Meta2 methodDict at: #interpreterCode) value isNotEmpty.