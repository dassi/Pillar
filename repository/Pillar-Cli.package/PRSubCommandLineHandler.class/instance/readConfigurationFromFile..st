activation
readConfigurationFromFile: confFile
	^ [ (PRCocoonConfigurationInterpreter baseDirectory: self baseDirectory) buildFromFile: confFile ]
		on: STONReaderError
		do: [ :error | self exitFailure: error messageText ]