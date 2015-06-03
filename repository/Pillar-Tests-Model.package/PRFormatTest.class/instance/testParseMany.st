tests-parsing
testParseMany
	| wiki text tree |
	wiki := '1' , self actualClass markup , '2' , self actualClass markup , '3' , self actualClass markup , '4' , self actualClass markup , '5'.
	text := '12345'.
	tree := PRDocument new
		add: (PRParagraph new
			add: (PRText content: '1');
			add: (self actualClass with: (PRText content: '2'));
			add: (PRText content: '3');
			add: (self actualClass with: (PRText content: '4'));
			add: (PRText content: '5');
			yourself);
		yourself.
	self assertWiki: wiki equalsTree: tree.
	self assertTree: tree equalsWiki: wiki.
	self assertTree: tree equalsText: text