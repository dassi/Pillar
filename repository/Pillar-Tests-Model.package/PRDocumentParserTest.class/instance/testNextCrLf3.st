tests
testNextCrLf3
	parser initializeOn: ('a' , (String with: Character lf)) readStream.
	self assert: parser nextLine = 'a'.
	self assert: parser nextLine isNil.
	parser initializeOn: ('a' , (String with: Character cr)) readStream.
	self assert: parser nextLine = 'a'.
	self assert: parser nextLine isNil.
	parser initializeOn: ('a' , (String with: Character cr) , (String with: Character lf)) readStream.
	self assert: parser nextLine = 'a'.
	self assert: parser nextLine isNil