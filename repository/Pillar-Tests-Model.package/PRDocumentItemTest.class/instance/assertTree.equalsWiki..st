utilities
assertTree: aDocument equalsWiki: aString
	"Asswert that traversing aDocument using the wiki writer results in aString."

	self assert: (PRPillarWriter write: aDocument) = aString description: aString resumable: false