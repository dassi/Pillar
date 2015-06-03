tests-parsing
testParseEscaped
	| wiki text tree |
	wiki :=  ' ', (PRTextParser escapeMarkup: self actualClass markup) , (PRTextParser escapeMarkup: self actualClass markup).
	text := ' ' , self actualClass markup , self actualClass markup.
	tree := PRDocument new
		add: (PRParagraph new
			add: (PRText content: ' ' , self actualClass markup , self actualClass markup);
			yourself);
		yourself.
	self assertWiki: wiki equalsTree: tree.
	self assertTree: tree equalsWiki: wiki.
	self assertTree: tree equalsText: text