accessing
baseDirectory

	^ baseDirectory ifNil: [ (OSEnvironment default getEnv: 'PWD') asFileReference ]