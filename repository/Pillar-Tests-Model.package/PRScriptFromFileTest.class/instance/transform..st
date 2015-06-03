actions
transform: aNode
	^ self actualInstance
		configuration:
				(PRCocoonConfiguration new
						baseDirectory: baseDirectory;
						newLine: Smalltalk os pillarLineEnding);
		start: aNode;
		topNode