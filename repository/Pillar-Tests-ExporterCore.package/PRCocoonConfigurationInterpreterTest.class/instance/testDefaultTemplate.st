tests
testDefaultTemplate
	| configuration output bindings |
	
	bindings := (Dictionary new
		at: 'content'
		put: 'chapeau';
		yourself).
		
	configuration := self fromString: '{}'.
	output := configuration expandTemplateWithBindings: bindings.
	self assert: output equals: 'chapeau'.