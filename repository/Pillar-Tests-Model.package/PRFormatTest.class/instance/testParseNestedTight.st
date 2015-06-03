tests-parsing
testParseNestedTight
	| wiki text tree |
	wiki := ' ' , self actualClass markup , self otherClass markup , self otherClass markup , self actualClass markup.
	text := ' '.
	tree := PRDocument new
		add: (PRParagraph new
			add: (PRText content: ' ');
			add: (self actualClass new
				add: self otherClass new
				yourself);
			yourself);
		yourself.
	self assertWiki: wiki equalsTree: tree.
	self assertTree: tree equalsWiki: wiki.
	self assertTree: tree equalsText: text