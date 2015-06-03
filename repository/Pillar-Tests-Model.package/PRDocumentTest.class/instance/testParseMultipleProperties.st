tests-parsing
testParseMultipleProperties
	| wiki text tree document|
	wiki := '{{title: The title}}', Smalltalk os pillarLineEnding , '{{authors: Someone else and me}}'.
	text := String new.
	tree := PRDocument new
		propertyAt: 'title' put: 'The title';
		propertyAt: 'authors' put: 'Someone else and me';
		yourself.
	self assertWiki: wiki equalsTree: tree.
	self assertTree: tree equalsWiki: wiki.
	self assertTree: tree equalsText: text.
	document := PRDocumentParser parse: wiki.
	self assert: document properties equals: tree properties