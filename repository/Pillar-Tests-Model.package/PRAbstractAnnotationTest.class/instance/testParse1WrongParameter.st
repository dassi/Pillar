tests
testParse1WrongParameter
	| wiki  tree |
	wiki := '${' , self annoteName , self wrongParameters , '}$'.
	tree := PRDocument new
		add:
			(PRParagraph new add: (self actualInstance parameters: {(self wrongKey -> self value)}))
				yourself. 
	self should: [self assertWiki: wiki equalsTree: tree] raise: PRError