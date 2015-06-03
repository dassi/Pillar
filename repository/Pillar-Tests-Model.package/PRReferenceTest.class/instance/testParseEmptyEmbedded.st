tests-parsing
testParseEmptyEmbedded
	| wiki1 wiki2 text tree |
	wiki1 := '++'.
	wiki2 := '\+\+'.
	text := '++'.
	tree := PRDocument new
		add: (PRParagraph new
				add: (PRText content: '++');
				yourself);
		yourself.
	self 
		assertWiki: wiki1
		equalsTree: tree.
	self 
		assertWiki: wiki2
		equalsTree: tree.
	self 
		assertTree: tree
		equalsWiki: wiki2.
	self 
		assertTree: tree
		equalsText: text