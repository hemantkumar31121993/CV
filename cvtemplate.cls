\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{cvtemplate}
%\LoadClassWithOptions{extarticle}
\LoadClass{article}
\RequirePackage[left=1.75cm, right=1.75cm, top=1.5cm, bottom=1.5cm]{geometry}
%\RequirePackage[left=1.75cm, right=1.75cm, top=1cm, bottom=1.5cm]{geometry}
\RequirePackage{xcolor}
\RequirePackage{graphicx}
\RequirePackage{fontspec}
\RequirePackage{tikz}
\RequirePackage{calc}
\RequirePackage{float}
\colorlet{accent}{blue!70!black}
\colorlet{heading}{black}
\colorlet{emphasis}{black}
\colorlet{body}{black!80!white}
\pagestyle{empty}

\RequirePackage{enumitem}
%\setlist{leftmargin=*,labelsep=0.5em,nosep,itemsep=0.25\baselineskip,after=\vskip0.25\baselineskip}
%\setlist{leftmargin=*,labelsep=0.5em,nosep} %itemsep=0.15\baselineskip,after=\vskip0.1\baselineskip}
\setlist{leftmargin=*,labelsep=0.5em,nosep,itemsep=0.1em}
\setlist[itemize]{label=\itemmarker}
\RequirePackage{multirow,tabularx}

\setlength{\parindent}{0pt}

\newcommand{\name}[1]{\def\@name{#1}}
\newcommand{\department}[1]{\def\@department{#1}}
\newcommand{\email}[1]{\def\@email{#1}}
\newcommand{\phonenumber}[1]{\def\@phonenumber{#1}}
\newcommand{\mailaddress}[1]{\def\@mailaddress{#1}}
\newcommand{\institute}[1]{\def\@institute{#1}}
\newcommand{\homepage}[1]{\def\@homepage{#1}}


\newcommand{\personalinfo}[1]{\def\@personalinfo{#1}}

\newcommand{\makecvheaderR}{%
	\begin{minipage}{\textwidth}
		\begin{minipage}{0.5\textwidth}
			{\fontsize{32pt}{40pt}\selectfont\@name}\\
			\@email, \@phonenumber
		\end{minipage}
		\begin{minipage}{0.5\textwidth}
			\hfill\@department
			
			\hfill\@institute
			
			\hfill\@mailaddress
		\end{minipage}
	\end{minipage}
}

%\newlength{\full}
%\setlength{\full}{\textwidth}
%\newcommand{\makecvheaderR}{%
%	\begin{minipage}{\full}
%		\begin{minipage}{0.45\full}
%			{\fontsize{32pt}{40pt}\selectfont\@name}\\
%			\@email, \@phonenumber
%		\end{minipage}
%		\begin{minipage}{0.45\full}
%			\hfill\@department
%			
%			\hfill\@institute
%			
%			\hfill\@mailaddress
%		\end{minipage}
%		\begin{minipage}{0.08\full}
%			\includegraphics[width=0.09\full]{hemantku.jpg}
%		\end{minipage}
%	\end{minipage}
%	\vspace{-\baselineskip}
%}

%\newcommand{\cvsection}[1]{%
%	\smallskip
%	{\fontspec[Path=/home/hemantku/.fonts/Roboto/]{Roboto-Medium}\selectfont
%	{\colorbox{headingbgcolor}{\makebox[\linewidth][l]{\textbf{\color{headingfgcolor}{\MakeUppercase{#1}}}}}}}
%    \par 
%    \smallskip
%}
\newlength{\myl}
\newlength{\myla}
\newlength{\mylb}
\newlength{\base}
\newlength{\baseplus}
\newlength{\basebus}
\setlength{\base}{0.5\baselineskip}
\setlength{\baseplus}{-2.2\base+0.06cm}
\setlength{\basebus}{-\base+0.06cm}


\newcommand{\cvsection}[1]{%
%	\settowidth{\myl}{#1}
%	\smallskip
	%\vspace{-\baselineskip}
	\vspace{0.1em}
	{\fontspec[Path=/home/hemantku/.fonts/Roboto/]{Roboto-Medium}\selectfont
		\settowidth{\myl}{\MakeUppercase{#1}}
		\setlength{\myla}{\myl+0.4cm}
		\setlength{\mylb}{\myl+0.1cm}
		\begin{tikzpicture}
			%\draw[thick, rounded corners = 2pt] (0,-0.5\baselineskip) -- ++(0.05,1.1\baselineskip) -- ++(1\myl, 0) -- ++(0.1,-1.1\baselineskip) -- (0,-0.5\baselineskip) -- (\linewidth,-0.5\baselineskip);
%			\draw[fill=lightgray, draw=lightgray, thin, rounded corners=1pt] (\linewidth,-\base) -- (\myla, -\base) -- ++(-\myla,0) -- ++(0.1,2.2\base) -- ++(\mylb,0) -- cycle -- (\linewidth,-\base);
%			\node[right] (0,0) {\MakeUppercase{#1}};
			\draw[fill=lightgray, draw=lightgray, thin, rounded corners=1pt] (\linewidth,-\base) -- ++(-\linewidth,0) -- ++(0.1,2.2\base) -- ++(\mylb,0) -- ++(0.2,\baseplus) -- (\linewidth,\basebus) -- cycle;
			\node[right] (0,0) {\MakeUppercase{#1}};
		\end{tikzpicture}
	}
	\vspace{-1.05\baselineskip}
}



\newcommand{\cvproject}[4]{%
	%\makebox[\linewidth][l] {
		{\textbf{\color{accent}#1}, }
		{\color{emphasis}#2}
		{\hfill{\footnotesize #3}\par}
		{\color{body}#4}
	%}
}
