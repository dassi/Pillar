tests
testNextCrLf1
	parser initializeOn: ('a' , (String with: Character cr) , 'b') readStream.
	self assert: parser nextLine = 'a'.
	self assert: parser nextLine = 'b'.
	self assert: parser nextLine isNil.
	parser initializeOn: ('a' , (String with: Character lf) , 'b') readStream.
	self assert: parser nextLine = 'a'.
	self assert: parser nextLine = 'b'.
	self assert: parser nextLine isNil.
	parser initializeOn: ('a' , (String with: Character cr) , (String with: Character lf) , 'b') readStream.
	self assert: parser nextLine = 'a'.
	self assert: parser nextLine = 'b'.
	self assert: parser nextLine isNil