tests
testTemplate
	| configuration |
	self assert: (self fromString: '{}') template equals: PRCocoonConfiguration new defaultTemplate.
	self should: [ (self fromString: '{#template: "Something.txt"}') templateContents ] raise: PRTemplateError.
	baseDirectory / 'something.txt' writeStreamDo: [ :s | s nextPutAll: 'a content' ].
	configuration := (self fromString: '{#template: "something.txt"}') yourself.
	self assert: configuration templateContents asString equals: 'a content'