activation
export
	[ subconfName ifNil: [ configuration export ] ifNotNil: [ configuration export: subconfName ] ]
		on: CCConfigurationError, PRNoInputFileError
		do: [ :error | self exitFailure: error messageText ]