%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Medium Length CV for Graduate School
% LaTeX Template
% Version 3.0 (10/25/14)
%
% This template is based on Trey Hunner's CV template (https://github.com/treyhunner/resume)
%
% Author for current version:
% Zhihao Li (http://codinfox.github.io)
%
% This class file defines the structure and design of the template. 
%
% Original header:
% Copyright (C) 2010 by Trey Hunner
%
% Copying and distribution of this file, with or without modification,
% are permitted in any medium without royalty provided the copyright
% notice and this notice are preserved. This file is offered as-is,
% without any warranty.
%
% Created by Trey Hunner and modified by www.LaTeXTemplates.com
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\ProvidesClass{resume}[2010/07/10 v0.91 Resume class]

\LoadClass[11pt,letterpaper]{article} % Font size and paper type

\usepackage{fontspec}  % to load non-Latex fonts (keeping math font)
\setmainfont{Palatino}
\setsansfont{Optima}
\usepackage{sectsty}
\allsectionsfont{\fontspec{Optima}}  % set header font

\usepackage[parfill]{parskip} % Remove paragraph indentation
\usepackage{array} % Required for boldface (\bf and \bfseries) tabular columns
\usepackage{ifthen} % Required for ifthenelse statements
\usepackage{multirow}

\pagestyle{empty} % Suppress page numbers

%----------------------------------------------------------------------------------------
%	HEADINGS COMMANDS: Commands for printing name and address
%----------------------------------------------------------------------------------------

\def \name#1{\def\@name{#1}} % Defines the \name command to set name
\def \@name {} % Sets \@name to empty by default

\def \addressSep {$\diamond$} % Set default address separator to a diamond

% One, two or three address lines can be specified 
\let \@addressone \relax
\let \@addresstwo \relax
\let \@addressthree \relax
\let \@addressfour \relax

% \address command can be used to set the first, second, and third address (last 2 optional)
\def \address #1{
  \@ifundefined{@addressone}{
    \def \@addressone {#1}
  }{
  \@ifundefined{@addresstwo}{
    \def \@addresstwo {#1}
  }{
    \@ifundefined{@addressthree}{
      \def \@addressthree {#1}
    }{
     \def \@addressfour {#1}
  }}}
}

%----------------------------------------------------------------------------------------
%	PRINT THE HEADING LINES
%----------------------------------------------------------------------------------------

\let\ori@document=\document
\renewcommand{\document}{
  \ori@document  % Begin document
  \begin{table}[h]
    \setmainfont{Optima}
    \begin{tabular*}{\textwidth}[b]{@{}l @{\extracolsep{\fill}}r@{}}
      \multirow{2}{*}{\namesize\bf\@name}
                        & \@addressone \\
                        & \@addresstwo \\
      \multirow{1}{*}{\@addressfour}
                        & \@addressthree
    \end{tabular*}
  \end{table}
}

%----------------------------------------------------------------------------------------
%	SECTION FORMATTING
%----------------------------------------------------------------------------------------

% Defines the rSection environment for the large sections within the CV
\newenvironment{rSection}[1]{ % 1 input argument - section name
  \sectionskip
  {\setmainfont{Optima}\bf\large #1} % Section title
  \sectionlineskip
  {\vspace{-3pt}\hrule} % Horizontal line
  \begin{list}{}{ % List for each individual item in the section
    \setlength{\leftmargin}{0em} % Margin within the section
  }
  \item[]
}{
  \end{list}
}

%----------------------------------------------------------------------------------------
%	EDUCATION FORMATTING
%----------------------------------------------------------------------------------------

\newenvironment{eSubsection}[5]{ % 5 input arguments - school name, location, degree, major and years
 {\bf #1} \hfill {\bf #2} % Bold school name and location on the right
 \ifthenelse{\equal{#3}{}}{}{ % If the third argument is not specified, don't print the degree line
   \\
   #3 in {\em #4} \hfill {\em #5} % Italic degree line
  }\smallskip
  \begin{list}{\textbullet}{\leftmargin=1.5em} % \cdot used for bullets, no indentation
   \itemsep -0.5em \vspace{-0.5em} % Compress items in list together for aesthetics
  }{
  \end{list}
  \vspace{0.5em} % Some space after the list of bullet points
}

%----------------------------------------------------------------------------------------
%	PROJECT FORMATTING
%----------------------------------------------------------------------------------------

\newenvironment{pSubsection}[5]{ % 5 input arguments - project name, location, role, time and comment
 {\bf #1} \hfill {\bf #2} % Bold school name and location on the right 
 \\
 {\em #5} \hfill {\em #4} % Italic degree line
 \ifthenelse{\equal{#3}{}}{}{ % If the fifth argument is not specified, don't print the line
   \\
   {\em #3}
  }\smallskip
  \begin{list}{\textbullet}{\leftmargin=1.5em} % \cdot used for bullets, no indentation
   \itemsep -0.5em \vspace{-0.5em} % Compress items in list together for aesthetics
  }{
  \end{list}
  \vspace{0.5em} % Some space after the list of bullet points
}

%----------------------------------------------------------------------------------------
%	WORK EXPERIENCE FORMATTING
%----------------------------------------------------------------------------------------

\newenvironment{rSubsection}[4]{ % 4 input arguments - company name, year(s) employed, job title and location
 {\bf #1} \hfill {\bf #2} % Bold company name and date on the right
 \ifthenelse{\equal{#3}{}}{}{ % If the third argument is not specified, don't print the job title and location line
  \\
  {\em #3} \hfill {\em #4} % Italic job title and location
  }\smallskip
  \begin{list}{\textbullet}{\leftmargin=1.5em} % \cdot used for bullets, no indentation
   \itemsep -0.5em \vspace{-0.5em} % Compress items in list together for aesthetics
  }{
  \end{list}
  \vspace{0.5em} % Some space after the list of bullet points
}

% The below commands define the whitespace after certain things in the document - they can be \smallskip, \medskip or \bigskip
\def\namesize{\Huge} % Size of the name at the top of the document
\def\addressskip{\smallskip} % The space between the two address (or phone/email) lines
\def\sectionlineskip{\medskip} % The space above the horizontal line for each section 
\def\nameskip{\bigskip} % The space after your name at the top
\def\sectionskip{\medskip} % The space after the heading section
