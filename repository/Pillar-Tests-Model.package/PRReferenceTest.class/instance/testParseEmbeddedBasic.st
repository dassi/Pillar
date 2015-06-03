tests-parsing
testParseEmbeddedBasic
	| wiki text tree |
	wiki := '+' , self referenceString , '+'.
	text := self actualClass new
		reference: self referenceString;
		embedded: true;
		title.
	tree := PRDocument new
		add: (PRParagraph new
			add: (self actualClass new
				reference: self referenceString;
				embedded: true;
				yourself);
			yourself);
		yourself.
	self assertWiki: wiki equalsTree: tree.
	self assertTree: tree equalsWiki: wiki.
	self assertTree: tree equalsText: text