tests
testParameters
	| instance expected |
	instance := PRMockForParameters new parameters: (PRParameterParser parse: self parametersAccepted).
	expected := Dictionary with: 'foo' -> '1' with: 'bar' -> 'test'.
	self assert: instance parameters equals: expected