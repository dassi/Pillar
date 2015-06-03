private
annotationBegin: annotationString
	"Maybe annotations should all be environments, but currently 'dothis' is a command"
	('dothis' = annotationString) ifTrue: [ ^ '\dothis{' ].
	
	^ '\begin{' , annotationString , '}'.
	