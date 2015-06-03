accessing
defaultTemplate
	^ '
{{=<% %>=}}
% aspectratio = specifies a 16/9 slide ration
% handout     = removes navigation bar
\documentclass[aspectratio=169, handout]{beamer}

\usepackage[english]{babel}
\usepackage[T1]{fontenc}
\usepackage[utf8]{inputenc}
\usepackage{helvet}
\usepackage{enumitem}' , self defaultTemplatePackages
		,
			'

\title{<%title%>}
\subtitle{<%subtitle%>}
\author{<%author%>}
\date{<%date%>}

\begin{document}

<%={{ }}=%>
{{{content}}}

\end{document}

%%% Local Variables:
%%% mode: latex
%%% TeX-master: t
%%% End:
'