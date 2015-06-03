activation
parseInputFiles
	(self arguments last beginsWith: '--')
		ifFalse: [ 
			| inputFile |
			inputFile := self baseDirectory resolve: self arguments last.
			inputFile exists
				ifFalse: [ self exitFailure: '"' , inputFile pathString , '" does not exist' ].
			configuration inputFiles: { inputFile } ]