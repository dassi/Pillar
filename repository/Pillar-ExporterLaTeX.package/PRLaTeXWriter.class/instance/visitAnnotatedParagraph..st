visiting-document
visitAnnotatedParagraph: anAnnotatedParagraph
	"Annotations need to be defined as environments in LaTeX include files (e.g. common.tex)"

	"However the existing Latex for \dothis is a command (in common.tex) "
	"Maybe it could be converted to an environment and the next seven lines deleted."
	'dothis' = anAnnotatedParagraph annotation asLowercase
		ifTrue: 
		[ 	canvas newLine.
			^ canvas command 
				name: anAnnotatedParagraph annotation ;
				parameter: [  super visitAnnotatedParagraph: anAnnotatedParagraph ]
		].

	canvas environment 
		name: anAnnotatedParagraph annotation ; 
		with: [  super visitAnnotatedParagraph: anAnnotatedParagraph ].