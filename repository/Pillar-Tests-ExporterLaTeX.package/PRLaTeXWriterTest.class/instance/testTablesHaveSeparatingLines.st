tests
testTablesHaveSeparatingLines
	| text |
	text := '|!Syntax |!What it represents
|startPoint|a variable name'.
	self assertWriting: (PRDocumentParser parse: text) includesTexts: { 'toprule' . 'midrule' . 'bottomrule' }