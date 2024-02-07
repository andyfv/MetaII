loadCode
loadFile: aFileName
	
	^ aFileName asFileReference readStreamDo: [ :stream | stream upToEnd ].