utilities
assertWikiTransform: aString equalsTree: aDocument
	"Assert that parsing aString results in aDocument."
	| config |
	config := PRCocoonConfiguration new.
	self
		assert: (PRFileInclusion new configuration: config; start: (PRDocumentParser parse: aString); topNode) = aDocument
		description: aString resumable: true