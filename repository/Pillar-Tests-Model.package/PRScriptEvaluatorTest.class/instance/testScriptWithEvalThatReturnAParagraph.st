tests
testScriptWithEvalThatReturnAParagraph
	| input expected |
	input := PRDocument new
		add:
			(PRParagraph new
				add:
						((PRScript content: 'stream nextPut: $h; nextPut: $e; nextPut: $l; nextPutAll: ''lo''')
								eval: true;
								yourself);
				yourself) yourself.
	expected := PRDocument new
		add: (self addText: 'hello' to: PRParagraph new);
		yourself.
	self assert: (self transform: input) equals: expected