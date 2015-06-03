tests
testDocumentPropertiesTakePrecedence
	| doc data conf |
	doc := PRDocument new propertyAt: 'title' put: 'Should win'; yourself.
	conf := PRCocoonConfiguration new.
	conf title: 'Should fail'.
	data := conf extractDataFrom: doc using: PRMockWriter new.
	self assert: (data includesKey: 'title').
	self assert: (data at: 'title') equals: 'Should win'