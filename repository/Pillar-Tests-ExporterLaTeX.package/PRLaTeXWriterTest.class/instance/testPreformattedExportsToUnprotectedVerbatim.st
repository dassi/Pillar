tests
testPreformattedExportsToUnprotectedVerbatim
	"Special characters in a Pillar preformattted group should not be protected by backslashes because they are exported in a verbatim LaTeX environment."

	| item |
	item := PRPreformatted with: (PRText content: '[[[').
	self
		assertWriting: item
		includesText: '\begin{verbatim}' , self configuration newLine , '[[[' , self configuration newLine , '\end{verbatim}'