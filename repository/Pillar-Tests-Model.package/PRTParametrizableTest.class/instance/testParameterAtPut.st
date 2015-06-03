tests
testParameterAtPut
	| instance |
	instance := PRMockForParameters new parameters: (PRParameterParser parse: self parametersAccepted).
	instance parameterAt: 'foo' put: 2.
	self assert: (instance parameters at: 'foo') equals: 2.
	self deny: (instance parameters at: 'foo') = '1'