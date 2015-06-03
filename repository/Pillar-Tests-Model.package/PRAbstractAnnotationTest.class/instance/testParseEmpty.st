tests
testParseEmpty
	| wiki text tree |
	wiki := '${' , self annoteName , ':value=}$'.
	text := ''.
	tree := PRDocument new
		add: (PRParagraph new add: (self actualInstance parameters: (PRParameterParser parse: 'value=')))
		yourself.
	self assertWiki: wiki equalsTree: tree.
	self assertTree: tree equalsWiki: wiki.
	self assertTree: tree equalsText: text