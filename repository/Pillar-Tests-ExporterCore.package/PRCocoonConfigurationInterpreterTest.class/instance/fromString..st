helper
fromString: aString 
	^ (PRCocoonConfigurationInterpreter baseDirectory: self baseDirectory) buildFromString: aString