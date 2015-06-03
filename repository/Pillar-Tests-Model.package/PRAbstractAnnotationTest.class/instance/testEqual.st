tests
testEqual
	| param1 param2 |
	param1 := Dictionary new. 
	param1 at: #foo put: 'bar'.
	param2 := Dictionary new.
	param2 at: #bar put: 'foo'.
	self deny: (self actualClass parameters: param1) = (self actualClass parameters: param2)