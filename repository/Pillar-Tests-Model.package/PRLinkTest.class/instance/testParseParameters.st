tests-parsing
testParseParameters
	| wiki text tree |
	wiki := '*Alias>' , self referenceString , '|a=1|b=2|c*'.
	text := 'Alias'.
	tree := PRDocument new
		add: (PRParagraph new
			add: (self actualClass new
				add: (PRText content: 'Alias');
				reference: self referenceString;
				parameters: (Array
					with: 'a' -> '1'
					with: 'b' -> '2'
					with: 'c' -> nil);
				yourself);
			yourself);
		yourself.
	self assertWiki: wiki equalsTree: tree.
	self assertTree: tree equalsWiki: wiki.
	self assertTree: tree equalsText: text