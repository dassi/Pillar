tests
testWithMultipleInputFiles
	| ston configuration  document |
	ston := '{ #inputFiles : [ "file1", "file2" ] }'.
	baseDirectory / 'file1' writeStreamDo: [ :s | s nextPutAll: 'foo' ].
	baseDirectory / 'file2' writeStreamDo: [ :s | s nextPutAll: 'bar' ].
	configuration :=(self fromString: ston) baseDirectory: baseDirectory; yourself.
	document := configuration parseAllInputFiles first.
	self assert: document children size equals: 2.
	self assert: document children first text equals: 'foo'.
	self assert: document children second text equals: 'bar'