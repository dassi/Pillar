tests
testDocumentsAreTransformed
	| configuration input output |
	input := '[[[eval=true
stream nextPut: $h; nextPutAll: ''ello''
]]]'.
	output := WriteStream on: String new.
	configuration := PRCocoonConfiguration new
		inputString: input;
		outputStream: output;
		outputType: PRMockWriter;
		export.
	self assert: output contents equals: 'hello'