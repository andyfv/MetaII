input code
loadFile: aFileName
	
	^ aFileName asFileReference readStreamDo: [ :stream | stream upToEnd ].