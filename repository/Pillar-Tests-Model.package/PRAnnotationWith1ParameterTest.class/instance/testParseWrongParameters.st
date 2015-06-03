tests
testParseWrongParameters
	| wiki  tree |
	wiki := '${' , self annoteName , self wrongParameters , '}$'.
	tree := PRDocument new
		add: (PRParagraph new add: (self actualInstance parameters: (Dictionary with: self wrongKey -> self value))) yourself.
	self should: [ self assertWiki: wiki equalsTree: tree ] raise: PRError