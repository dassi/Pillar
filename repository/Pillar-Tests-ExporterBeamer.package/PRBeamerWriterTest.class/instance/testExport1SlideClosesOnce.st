tests
testExport1SlideClosesOnce
	"self debug: #testExport1SlideClosesOnce"

	| item resultString index |
	item := PRDocument new
		add:
				(self
						addText: 'Slide 1'
						to:
							(PRHeader new
								level: 2;
								yourself));
		yourself.
	resultString := self write: item.
	index := resultString findString: '\end{frame}' startingAt: 0.
	self assert: index > 0.
	index := resultString findString: '\end{frame}' startingAt: index + 1.
	"\end{frame} appears only once in the result"
	self assert: index equals: 0
	
	