tests-parsing
testParseParametersEmpty
	| wiki text tree |
	wiki := '*Alias>' , self referenceString , '|a||b|*'.
	text := 'Alias'.
	tree := PRDocument new
		add: (PRParagraph new
			add: (self actualClass new
				add: (PRText content: 'Alias');
				reference: self referenceString;
				parameters: (Array
					with: 'a' -> nil
					with: 'b' -> nil);
				yourself);
			yourself);
		yourself.
	self assertWiki: wiki equalsTree: tree.
	self assertTree: tree equalsText: text