tests
testEnsureNewFileWhenExporting
	|  configuration  |
	
	(baseDirectory / 'foo.html') writeStreamDo: [ :stream | stream nextPutAll: 'some very long string' ].	
	configuration := self fromString: '{ #outputFile: "foo.html" }'.
	configuration outputStreamDuring: [:outStream | configuration writeOutput: 'short' toStream: outStream].
	self assert: (baseDirectory / 'foo.html') readStream contents asString equals: 'short'