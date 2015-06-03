tests
testExport1SimpleSlide
	"self debug: #testExportSlideTitle"

	| item |
	item := PRDocument new
		add:
				(self
						addText: 'Slide title'
						to:
							(PRHeader new
								level: 2;
								yourself));
		add: (PRText content: 'Presentation text');
		yourself.
	self
		assertWriting: item
		includesTexts:
			{'\begin{frame}'.
			'\frametitle{Slide title}'.
			'Presentation text'.
			'\end{frame}'}