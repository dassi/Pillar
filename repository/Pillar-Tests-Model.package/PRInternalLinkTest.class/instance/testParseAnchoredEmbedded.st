tests-parsing
testParseAnchoredEmbedded
	| wiki text tree |
	wiki := '+' , self referenceString , '@Anchor+'.
	text := self actualClass new
		reference: self referenceString;
		anchor: 'Anchor';
		embedded: true;
		title.
	tree := PRDocument new
		add: (PRParagraph new
			add: (self actualClass new
				reference: self referenceString;
				anchor: 'Anchor';
				embedded: true;
				yourself);
			yourself);
		yourself.
	self assertWiki: wiki equalsTree: tree.
	self assertTree: tree equalsWiki: wiki.
	self assertTree: tree equalsText: text