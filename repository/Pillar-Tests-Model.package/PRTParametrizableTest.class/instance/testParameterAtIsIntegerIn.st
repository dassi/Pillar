tests
testParameterAtIsIntegerIn
	| instance expected |
	instance := PRMockForParameters new
		parameters: (PRMockForParameters parameterAt: 'foo' IsIntegerIn: (PRParameterParser parse: self parametersAccepted)).
	expected := Dictionary with: 'foo' -> 1 with: 'bar' -> 'test'.
	self assert: instance parameters equals: expected