activation
activate
	super activate.
	subconfName isEmptyOrNil ifTrue: [ self errorMissingParameter: 'to' ].
	self optionAt: 'outputFile' ifPresent: [ :file | configuration outputFile: file asFileReference ].
	self parseInputFiles.
	self export.
	self exitSuccess