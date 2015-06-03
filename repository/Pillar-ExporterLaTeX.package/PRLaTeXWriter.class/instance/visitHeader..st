visiting-document
visitHeader: aHeader
	| sections level section |
	sections := self sectioningCommands.
	level := self configuration headingLevelOffset + aHeader level.
	section := sections at: (level min: sections size max: 1).
	canvas command
		name: section;
		parameter: [ super visitHeader: aHeader ]