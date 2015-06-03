visiting-document
visitFigure: aFigure
	canvas environment
		name: 'figure';
		with: [ 
					canvas environment
						name: 'center';
						with: [ 
									canvas command
										name: 'includegraphics';
										optParameter: [ self writeGraphicsParametersOfExternalLink: aFigure ];
										parameter: [ canvas raw: (self referenceOfExternalLink: aFigure) ].
									canvas command
										name: 'caption';
										parameter: [ 
													self
														writeCaptionOfExternalLink: aFigure;
														writeLabelOfExternalLink: aFigure ] ] ]