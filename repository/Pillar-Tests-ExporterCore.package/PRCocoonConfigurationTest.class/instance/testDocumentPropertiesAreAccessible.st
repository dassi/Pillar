tests
testDocumentPropertiesAreAccessible
	| doc data |
	doc := PRDocument new propertyAt: 'authors' put: 'Someone'; yourself.
	data := PRCocoonConfiguration new extractDataFrom: doc using: PRMockWriter new.
	self assert: (data includesKey: 'authors').
	self assert: (data at: 'authors') equals: 'Someone'