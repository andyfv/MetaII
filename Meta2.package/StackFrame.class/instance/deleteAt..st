accessing
deleteAt: aKey 
	"Remove an association from the dictionary.
	If the key remove the associaation and reutrn the value. 
	Otherwise throw an error"
	
	^ self dict removeKey: aKey