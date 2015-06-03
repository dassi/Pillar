tests
testParseTooManyParameters
	| wiki text tree |
	wiki := '${' , self annoteName , self goodParameters , '|foo=bar' , '}$'.
	text := ''.
	tree := PRDocument new
		add:
			(PRParagraph new add: (self actualInstance parameters: {(self goodKey -> self value)}))
				yourself.
	self should: [self assertWiki: wiki equalsTree: tree] raise: PRError