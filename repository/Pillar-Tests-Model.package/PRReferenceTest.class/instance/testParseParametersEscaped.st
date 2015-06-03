tests-parsing
testParseParametersEscaped
	| wiki text tree |
	wiki := '+Alias>' , self referenceString , '|2=\|\=|\|\==1+'.
	text := 'Alias'.
	tree := PRDocument new
		add: (PRParagraph new
			add: (self actualClass new
				add: (PRText content: 'Alias');
				reference: self referenceString;
				parameters: (Dictionary
					with: '|=' -> '1'
					with: '2' -> '|=');
				embedded: true;
				yourself);
			yourself);
		yourself.
	self assertWiki: wiki equalsTree: tree.
	self assertTree: tree equalsWiki: wiki.
	self assertTree: tree equalsText: text