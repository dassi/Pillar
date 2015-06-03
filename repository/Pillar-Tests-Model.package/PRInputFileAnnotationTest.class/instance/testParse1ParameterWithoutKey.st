tests
testParse1ParameterWithoutKey
	| wiki text tree wikiTransform|
	wiki := '${' , self annoteName , ':', self value , '}$'.
	wikiTransform := '${' , self annoteName , self goodParameters, '}$'.
	text := ''.
	tree := PRDocument new
		add:
			(PRParagraph new add: (self actualInstance parameters: {(self goodKey -> self value)}))
				yourself.
	self assertWiki: wiki equalsTree: tree.
	self assertTree: tree equalsWiki: wikiTransform.
	self assertTree: tree equalsText: text