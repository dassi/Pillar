tests
testParseParameters
	| wiki text tree |
	wiki := '${' , self annoteName , self goodParameters , '}$'.
	text := ''.
	tree := PRDocument new
		add: (PRParagraph new add: (self actualInstance parameters: (Dictionary with: self goodKey -> self value))) yourself.
	self assertWiki: wiki equalsTree: tree.
	self assertTree: tree equalsWiki: wiki.
	self assertTree: tree equalsText: text