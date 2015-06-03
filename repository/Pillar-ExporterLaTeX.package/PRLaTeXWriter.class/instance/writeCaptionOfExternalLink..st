helpers
writeCaptionOfExternalLink: anExternalLink
	| title |
	title := anExternalLink text.
	canvas nextPutAll: title.
	title last = $.
		ifFalse: [ canvas nextPut: $. ]