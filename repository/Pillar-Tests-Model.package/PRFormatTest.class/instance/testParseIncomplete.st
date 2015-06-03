tests-parsing
testParseIncomplete
	| wiki1 wiki2 text tree |
	wiki1 := '1' , self actualClass markup , '2'.
	wiki2 := '1' , (PRTextParser escapeMarkup: self actualClass markup) , '2'.
	text := '1' , self actualClass markup , '2'.
	tree := PRDocument new
		add: (PRParagraph new
			add: (PRText content: '1' , self actualClass markup , '2');
			yourself);
		yourself.
	self assertWiki: wiki1 equalsTree: tree.
	self assertWiki: wiki2 equalsTree: tree.
	self assertTree: tree equalsWiki: wiki2.
	self assertTree: tree equalsText: text