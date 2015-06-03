protected
adaptParameters: aDictionary
	self parameters: aDictionary haveSize: 2.
	^ self parameterAt: 'foo' isIntegerIn: aDictionary