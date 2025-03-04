\ProvidesClass{russell}[2017/02/05 v1.6.1 russell Curriculum Vitae Class]
\NeedsTeXFormat{LaTeX2e}
% Options for draft or final
\DeclareOption{draft}{\setlength\overfullrule{5pt}}
\DeclareOption{final}{\setlength\overfullrule{0pt}}
% Inherit options of article
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

%-------------------------------------------------------------------------------
%                3rd party packages
%-------------------------------------------------------------------------------
% Needed to make fixed length table
\RequirePackage{array}
% Needed to handle list environment
\RequirePackage{enumitem}
% Needed to handle text alignment
\RequirePackage{ragged2e}
% Needed to configure page layout
\RequirePackage{geometry}
% Needed to make header & footer effeciently
\RequirePackage{fancyhdr}
% Needed to manage colors
\RequirePackage{xcolor}
% Needed to use \ifxetex-\else-\fi statement
\RequirePackage{ifxetex}
% Needed to use \if-\then-\else statement
\RequirePackage{xifthen}
% Needed to use a toolbox of programming tools
\RequirePackage{etoolbox}
% Needed to change line spacing in specific environment
\RequirePackage{setspace}
% Needed to manage fonts
\RequirePackage[quiet]{fontspec}
% Needed to use icons from font-awesome
\RequirePackage{fontawesome5}
\RequirePackage{roboto}
\RequirePackage[default,opentype]{sourcesanspro}
% Needed to deal a paragraphs
\RequirePackage{parskip}
% Needed to deal hyperlink
\RequirePackage[hidelinks,unicode,pdfpagelabels=false]{hyperref}
\hypersetup{%
  pdftitle={},
  pdfauthor={},
  pdfsubject={},
  pdfkeywords={}
}
% Solves issues Warning: File `cv.out' has changed
\RequirePackage{bookmark}

% Not required anymore but left in place for backward compatability.
\newcommand*{\fontdir}[1][fonts/]{\def\@fontdir{#1}}

%% Page Layout
% Configure page margins with geometry
\geometry{left=2.0cm, top=1.5cm, right=2.0cm, bottom=2.0cm, footskip=.5cm}

%% Header & Footer
% Set offset to each header and footer
\fancyhfoffset{0em}
% Remove head rule
\renewcommand{\headrulewidth}{0pt}
% Clear all header & footer fields
\fancyhf{}
% Enable if you want to make a header or footer using fancyhdr
\pagestyle{fancy}
\setmainfont{Arial}

% Gray-scale colors
\definecolor{black}{HTML}{000000}
% Basic colors
\definecolor{blue}{HTML}{4472c4}
% Text colors
\colorlet{text}{black}
\colorlet{sectiondivider}{gray}
\colorlet{graytext}{gray}
\colorlet{lighttext}{black}
% russell colors
\definecolor{russell-skyblue}{HTML}{0395DE}
\definecolor{russell-black}{HTML}{000000}

% Boolean value to switch section color highlighting
\newbool{acvSectionColorHighlight}
\setbool{acvSectionColorHighlight}{true}

% russell section color
\def\@sectioncolor#1#2#3{%
  \ifbool{acvSectionColorHighlight}{{\color{russell}#1#2#3}}{#1#2#3}%
}


\usepackage{newtxtext} % Times Roman font
\usepackage{xcolor}
\newcommand*{\bodyfont}{\rmfamily} % Times Roman

% Define bodyfont command

\newcommand*{\headerfont}{\fontfamily{Arial}\selectfont} % Arial
\newcommand*{\headerfontlight}{\fontfamily{Arial}\selectfont} % Arial Light
\newcommand*{\footerfont}{\fontfamily{Arial}\selectfont} % Arial
\newcommand*{\bodyfontlight}{\fontfamily{Arial}\selectfont} % Arial Light

% Configure styles for each CV elements
\newcommand*{\headerfirstnamestyle}[1]{{\fontsize{15pt}{1em}\headerfont\color{text} #1}}
\newcommand*{\headerlastnamestyle}[1]{{\fontsize{15pt}{1em}\headerfont\color{text} #1}}
\newcommand*{\headerpositionstyle}[1]{{\fontsize{7.6pt}{1em}\bodyfont\scshape\color{russell-black} #1}}
\newcommand*{\headeraddressstyle}[1]{{\fontsize{8pt}{1em}\headerfont\itshape\color{lighttext} #1}}
\newcommand*{\headersocialstyle}[1]{{\fontsize{8pt}{1em}\headerfont\color{text} #1}}
\newcommand*{\headerquotestyle}[1]{{\fontsize{9pt}{1em}\bodyfont\itshape\color{darktext} #1}}
\newcommand*{\footerstyle}[1]{{\fontsize{8pt}{1em}\footerfont\scshape\color{lighttext} #1}}
\newcommand*{\sectionstyle}[1]{{\fontsize{10.5pt}
{1em}\bodyfont\bfseries\color{blue}\@sectioncolor #1}}
\newcommand*{\subsectionstyle}[1]{{\fontsize{12pt}{1em}\bodyfont\scshape\textcolor{text}{#1}}}
\newcommand*{\paragraphstyle}{\fontsize{12pt}{1em}\bodyfontlight\upshape\color{text}} 

% For elements of entry
\newcommand*{\entrytitlestyle}[1]{{\fontsize{10.5pt}{1em}\bodyfont\bfseries\color{text} #1}}
\newcommand*{\entrypositionstyle}[1]{{\fontsize{9.5pt}{1em}\bodyfont\color{black} #1}}
\newcommand*{\entrydatestyle}[1]{{\fontsize{9.5pt}{1em}\bodyfontlight\itshape\color{black} #1}}
\newcommand*{\entrylocationstyle}[1]{{\fontsize{9.5pt}{1em}\bodyfontlight\itshape\color{russell} #1}}
\newcommand*{\entryhrefstyle}[1]{\fontsize{9.5pt}
{1em}\bodyfontlight\itshape\color{black} #1}
\newcommand*{\descriptionstyle}[1]{{\fontsize{10.5pt}{1em}\bodyfontlight\upshape\color{black} #1}}
\newcommand*{\entrytextitstyle}[1]{\fontsize{9.5pt}
{1em}\bodyfontlight\itshape\color{black} #1}
%-------------------Skills-------------------
\newcommand*{\entryskillheaderstyle}[1]{\fontsize{9pt}
{1em}\bodyfont\bfseries\color{black} #1}
\newcommand*{\entryskillsubheaderstyle}[1]{\fontsize{9.5pt}
{1em}\bodyfontlight\bfseries\color{blue} #1}
\newcommand*{\entryskillitemstyle}[1]{\fontsize{7.5pt}
{1em}\bodyfontlight\color{black} #1}
%-------------------Projects-------------------
\newcommand*{\entryprosubelemstyle}[1]{\fontsize{9.5pt}
{1em}\bodyfontlight\bfseries\color{black} #1}

% For elements of skill
\newcommand*{\skilltypestyle}[1]{{\fontsize{10pt}{0em}\bodyfont\color{black} #1}}

\newcommand*{\skillsetstyle}[1]{{\fontsize{10pt}{1em}\bodyfontlight\color{black} #1}}
% Commands for personal information

\newcommand*{\name}[2]{\def\@firstname{#1}\def\@lastname{#2}}
\newcommand*{\firstname}[1]{\def\@firstname{#1}}
\newcommand*{\lastname}[1]{\def\@lastname{#1}}
\newcommand*{\familyname}[1]{\def\@lastname{#1}}
\def\@familyname{\@lastname}

% Define writer's address
\newcommand*{\address}[1]{\def\@address{#1}}
\newcommand*{\position}[1]{\def\@position{#1}}
\newcommand*{\mobile}[1]{\def\@mobile{#1}}
\newcommand*{\email}[1]{\def\@email{#1}}
\newcommand*{\homepage}[1]{\def\@homepage{#1}}
\newcommand*{\github}[1]{\def\@github{#1}}
\newcommand*{\linkedin}[1]{\def\@linkedin{#1}}
\newcommand*{\leetcode}[1]{\def\@leetcode[#1]}
\newcommand*{\hackerrank}[1]{\def\@hackerrank[#1]}
\newcommand*{\freecodecamp}[1]{\def\@freecodecamp[#1]}
%                Commands for extra
% Header
\newcommand{\acvHeaderNameDelim}{\space}
\newcommand{\acvHeaderAfterNameSkip}{-.4mm}
\newcommand{\acvHeaderAfterPositionSkip}{.4mm}
\newcommand{\acvHeaderAfterAddressSkip}{-.5mm}
\newcommand{\acvHeaderIconSep}{\space}
\newcommand{\acvHeaderSocialSep}{\quad\textbar\quad}
\newcommand{\acvHeaderAfterSocialSkip}{6mm}
\newcommand{\acvHeaderAfterQuoteSkip}{5mm}
\newcommand{\acvSectionTopSkip}{3mm}
\newcommand{\acvSectionContentTopSkip}{1.5mm}
%                Commands for utilities
\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}

% Use to draw horizontal line with specific thickness
\def\vhrulefill#1{\leavevmode\leaders\hrule\@height#1\hfill \kern\z@}

% Use to execute conditional statements by checking empty string
\newcommand*{\ifempty}[3]{\ifthenelse{\isempty{#1}}{#2}{#3}}
%                Commands for eleents of CV structure
\newcommand*{\makecvheader}[1][C]{%
  \newlength{\headertextwidth}
  \setlength{\headertextwidth}{\textwidth}
  \begin{minipage}[c]{\headertextwidth}
    \ifthenelse{\equal{#1}{L}}{\raggedright}{\ifthenelse{\equal{#1}{R}}{\raggedleft}{\centering}}
    \headerfirstnamestyle{\@firstname}\headerlastnamestyle{{}\acvHeaderNameDelim\@lastname}
    \\[\acvHeaderAfterNameSkip]
    \ifthenelse{\isundefined{\@address}}{}{\headeraddressstyle{\@address\\[\acvHeaderAfterAddressSkip]}}
    \headersocialstyle{
      \newbool{isstart}
      \setbool{isstart}{true}
      \ifthenelse{\isundefined{\@mobile}}
        {}
        {%
          \href{tel:\@mobile}{\@mobile}%
          \setbool{isstart}{false}%
        }
      \ifthenelse{\isundefined{\@email}}%
        {}
        {%
          \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
          \href{mailto:\@email}{\@email}%
        }
      \ifthenelse{\isundefined{\@homepage}}%
        {}
        {%
          \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
          \href{http://\@homepage}{\@homepage}%
        }
      \ifthenelse{\isundefined{\@github}}%
        {}
        {%
          \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
          \href{https://\@github}{\@github}%
        }
      \ifthenelse{\isundefined{\@linkedin}}%
        {}
        {%
          \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
          \href{https://www.\@linkedin}{\@linkedin}%
        }
    }
  \end{minipage}%
}

% Define a section for CV
\newcommand{\cvsection}[1]{%
  \vspace{\acvSectionTopSkip}
  \sectionstyle{#1}
  \phantomsection
  \color{sectiondivider}\vhrulefill{0.5pt}
}
%-------------------------Education-------------------------
\newenvironment{envcvhonors}{%
  \vspace{\acvSectionContentTopSkip}
  \vspace{-2mm}
  \begin{center}
}{%
  \end{center}
  \vspace{-5mm}
}

\newcommand*{\cvhonor}[4]{%
  \ifempty{#1}
    {}
    {%
      \vspace{-0.5mm}
      \setlength{\tabcolsep}{0pt}
      \setlength{\extrarowheight}{0pt}
      \begin{tabular*}{\linewidth}{@{\extracolsep{\fill}} L{13cm} R{2.5cm}}
        \ifempty{#3}
            {\entrytitlestyle{#1}, \entrytextitstyle{#2}\\}
            {\entrytitlestyle{#1}, \entrytextitstyle{#2} & \entrydatestyle{#3} \\}
        \ifempty{#4}
            {}
            {\entrytextitstyle{#4} \\}
      \end{tabular*}
    }
}
%-------------------------Experience-------------------------
% Wrapper Environment
\newenvironment{envcvexps}{%
  \vspace{\acvSectionContentTopSkip}
  \vspace{-1mm}
  \begin{center}
}{%
  \end{center}
  \vspace{-5mm}
}

% SubCommand Environment 2
\newenvironment{envcvexpitems}{%
  \vspace{\acvSectionContentTopSkip}
  \vspace{-1mm}
  \setlength{\leftmargin}{0pt}
  \noindent
  \renewcommand{\arraystretch}{0} % Remove vertical padding
  \begin{tabular}{@{}p{\linewidth}@{}}
}{%
  \end{tabular}
}
% 2nd Environment Property Catcher
\newcommand{\expitems}[1]{%
    \vspace{\acvSectionContentTopSkip}
    \vspace{-1mm}
    \ifempty{#1}
    {}
    {-\hspace{1em}\entryprosubelemstyle{#1} \\}
}

% Wrapper Sub-Command
\newcommand*{\cvexp}[4]{%
  \ifempty{#1}
    {}
    {
      \vspace{-2mm}
      \setlength{\tabcolsep}{0pt}
      \setlength{\extrarowheight}{0pt}
      \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} L{\textwidth - 5cm} R{4cm}}
        \ifempty{#2}
          {\entrytitlestyle{#1} \\} 
          {\entrytitlestyle{#1} & \entrylocationstyle{#2} \\} 
      \end{tabular*}
      \ifempty{#3}
        {}
        {\setlength{\leftskip}{0pt}\color{black} #3 \\}
      \ifempty{#4}
        {}
        {#4} 
    }   
}
%-------------------------Projects-------------------------
\newenvironment{cventries}{%
  \vspace{\acvSectionContentTopSkip}
  \vspace{-3mm}
  \begin{center}
}{%
  \end{center}
  \vspace{-3mm}
}
\newenvironment{envcvproitems}{%
  \vspace{\acvSectionContentTopSkip}
  \vspace{-3mm}
  \setlength{\leftmargin}{0pt}
  \noindent
  \renewcommand{\arraystretch}{0} % Remove vertical padding
  \begin{tabular}{@{}p{\linewidth}@{}}
}{%
  \end{tabular}
}

\newcommand*{\proelem}[1]{ %
  \vspace{\acvSectionContentTopSkip}
  \vspace{-1mm}
  \ifempty{#1}
  {}
  {-\hspace{1em}\entryprosubelemstyle{#1} \\}
}

\newcommand*{\cventry}[4]{%
  \ifempty{#1}
    {}
    {
      \vspace{\acvSectionContentTopSkip}
      \vspace{-0.25mm} 
      \setlength\tabcolsep{0pt}
      \setlength{\extrarowheight}{0pt} 
      \setlength{\leftskip}{0pt} 
      \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} L{13cm} R{3cm}}
        \ifempty{#2}
          {} 
          {\entrytitlestyle{#1}\hspace{0.1em} | \hspace{0.1em}\entrytextitstyle{#2} & \entrydatestyle{#3} \\} 
      \end{tabular*}
      \ifempty{#4}
        {}
        {#4}
    }
}
%-------------------------Skills-------------------------
% Wrapper Environment
\newenvironment{envcvskills}{%
  \vspace{\acvSectionContentTopSkip}
  \vspace{-1mm}
  \begin{center}
}{%
  \end{center}
  \vspace{-4mm}
}

% Main Environment Wrapper
\newcommand*{\cvskill}[2]{%
    \ifempty{#1}
    {}
    {
    \vspace{\acvSectionContentTopSkip}
    \vspace{-3mm}
    \setlength{\tabcolsep}{0pt}
    \setlength{\extrarowheight}{0pt}
    \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} L{10cm}}
        \entryskillheaderstyle{#1}\\
    \end{tabular*}
    \ifempty{#2}
    {}
    {#2}
    }
}

% 2nd Environment Wrapper
\newenvironment{envskillitems}{%
  \vspace{\acvSectionContentTopSkip}
  \vspace{-5mm}
  \renewcommand{\arraystretch}{0.2}
  \begin{justify}
    \begin{tabular*}{\linewidth}{@{\extracolsep{\fill}} l L{\linewidth * \real{0.65}}} 
}
{%
\end{tabular*}
  \end{justify}
}

% 2nd Environment Property Catcher
\newcommand{\skillitems}[2]{%
    \ifempty{#1} 
    {}
    {
    \vspace{\acvSectionContentTopSkip}
    \vspace{0.25mm}
    \hspace{1.5em}\entryskillsubheaderstyle{#1} &
    \entryskillitemstyle{#2} \\
    }
}
%-------------------------Coding Profile-------------------------
% Main Wrapper
\newenvironment{cvlangs}{%
  \vspace{\acvSectionContentTopSkip}
  \vspace{-2mm}
  \begin{center}
}{%
  \end{center}
  \vspace{-2mm}
}

% 2nd Environment Wrapper
\newenvironment{envcvlang}{%
  \vspace{-5.5mm}
  \renewcommand{\arraystretch}{0.2}
  \begin{justify}
    \begin{tabular*}{\linewidth}{@{\extracolsep{\fill}} L{3cm} L{8cm} R{2cm}} 
}{%
    \end{tabular*}
  \end{justify}
  \vspace{-0.1mm}
}

% 2nd Environment Property Catcher
\newcommand*{\cvlangitem}[3]{%
  \parbox[t]{4cm}{\hspace{1.3em}\descriptionstyle{#1}} & 
  \parbox[t]{10cm}{\hspace{2em}\entrytextitstyle{#3}} & 
  \parbox[t]{4cm}{\hspace{1.3em}\entrydatestyle{#2}} \\ 
}

% Main Wrapper Environment
% Argument includes all entry counts
\newcommand*{\cvlang}[4]{%
    \ifempty{#1}
    {}
    {
    \setlength{\tabcolsep}{0pt}
    \setlength{\extrarowheight}{0pt}
    \begin{tabular*}{\textwidth}{@{\extracolsep{2mm}} L{3cm} L{5cm} L{7cm}}
        \ifempty{#2}
            {}
            {\entrytitlestyle{#1} & \entrytextitstyle{#2} & \entryhrefstyle{Profile: }\href{http://#3}{#3} \\}
    \end{tabular*}
    \ifempty{#4}
        {}
        {#4}
    }
}

%----------------------CodingProfile 2-----------------------

\newcommand*{\cvprotwo}[3]{%
    \ifempty{#1}
    {}
    {
    \vspace{\acvSectionContentTopSkip}
    \vspace{-5mm}
    \setlength{\tabcolsep}{0pt}
    \setlength{\extrarowheight}{0pt}
    \begin{tabular*}{\linewidth}{@{\extracolsep{\fill}} l L{\linewidth * \real{0.75}}}
        \entryskillheaderstyle{#1} | \href{#2}{\color{blue}Link}  & \entryskillsubheaderstyle{#3} \\
    \end{tabular*}
    }
}

\newenvironment{envcvpro}{%
  \vspace{\acvSectionContentTopSkip}
  \vspace{1mm}
  \begin{center}
}{%
  \end{center}
  \vspace{-7mm}
}

%-------------------------Certifications-------------------------

\newcommand*{\entrycertheaderstyle}[1]{\fontsize{9.5pt}
{1em}\bodyfont\upshape\color{black} #1}
\newcommand*{\entrycertsubheaderstyle}[1]{\fontsize{8.5pt}
{1em}\bodyfontlight\slshape\color{black} #1}


\newenvironment{envcvcerts}{%
  \vspace{\acvSectionContentTopSkip}
  \vspace{1mm}
  \begin{center}
}{%
  \end{center}
  \vspace{-7mm}
}

\newcommand*{\cvcerts}[4]{%
    \ifempty{#1#2#4}
    {}
    {
    \vspace{\acvSectionContentTopSkip}
    \vspace{-5mm}
    \setlength{\tabcolsep}{0pt}
    \setlength{\extrarowheight}{0pt}
    \setlength{\tabcolsep}{0pt}
      \setlength{\extrarowheight}{0pt}
      \begin{tabular*}{\linewidth}{@{\extracolsep{\fill}} L{13cm} R{2.5cm}}
      \entrycertheaderstyle{#1} | {#4} | \entrycertsubheaderstyle{#3} & \entrydatestyle{#2} \\
    \end{tabular*}
    }
}