visiting-document
visitHeader: aHeader
	aHeader level = 1
		ifTrue: [ ^ self visitDocumentTitle: aHeader ].
	aHeader level = 2
		ifTrue: [ ^ self visitSlideTitle: aHeader ].
	PRExportError signal: 'Unsupported title'