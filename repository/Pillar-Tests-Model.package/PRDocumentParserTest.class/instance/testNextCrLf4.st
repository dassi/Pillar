tests
testNextCrLf4
	parser initializeOn: ((String with: Character lf) , (String with: Character lf)) readStream.
	self assert: parser nextLine = ''.
	self assert: parser nextLine = ''.
	self assert: parser nextLine isNil.
	parser initializeOn: ((String with: Character cr) , (String with: Character cr)) readStream.
	self assert: parser nextLine = ''.
	self assert: parser nextLine = ''.
	self assert: parser nextLine isNil.
	parser initializeOn: ((String with: Character cr) , (String with: Character lf)) readStream.
	self assert: parser nextLine = ''.
	self assert: parser nextLine isNil.
	parser initializeOn: ((String with: Character lf) , (String with: Character cr)) readStream.
	self assert: parser nextLine = ''.
	self assert: parser nextLine = ''.
	self assert: parser nextLine isNil