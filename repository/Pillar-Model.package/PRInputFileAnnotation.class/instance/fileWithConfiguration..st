accessing
fileWithConfiguration: aConfiguration
	"I search my file."

	^ aConfiguration baseDirectory resolve: (self parameters at: 'value')