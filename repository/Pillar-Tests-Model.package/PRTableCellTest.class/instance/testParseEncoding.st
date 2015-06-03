tests-parsing
testParseEncoding
	| wiki text tree |
	wiki := '|*link*|+embedded+|foo{}'.
	text := 'link	embedded	foo{}'.
	tree := PRDocument new
		add: (PRTable new
			add: (PRTableRow new
				add: (PRTableCell new
					add: (PRInternalLink new
						reference: 'link';
						yourself);
					yourself);
				add: (PRTableCell new
					add: (PRInternalLink new
						reference: 'embedded';
						embedded: true;
						yourself);
					yourself);
				add: (PRTableCell new
					add: (PRText content: 'foo{}');
					yourself);
				yourself);
			yourself);
		yourself.
	self assertWiki: wiki equalsTree: tree.
	self assertTree: tree equalsWiki: wiki.
	self assertTree: tree equalsText: text