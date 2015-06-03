tests
testTemplateContentsIsUsed
	| configuration output bindings |
	
	bindings := (Dictionary new
		at: 'lapin'
		put: 'chapeau';
		yourself).

	(baseDirectory / 'foobar') writeStreamDo: [ :s | s << 'foobar' ].
	configuration := self fromString: '{ #template: "foobar"}'.
	configuration baseDirectory: baseDirectory.
	output := configuration expandTemplateWithBindings: bindings.
	self assert: output equals: 'foobar'.
	
	(baseDirectory / 'lapin') writeStreamDo: [ :s | s << '{{{lapin}}}' ].
	configuration := self fromString: '{ #template: "lapin"}'.
	configuration baseDirectory: baseDirectory.
	output := configuration expandTemplateWithBindings: bindings.
	self assert: output equals: 'chapeau'.