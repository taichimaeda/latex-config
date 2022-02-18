% Set the document configuration.
\NeedsTeXFormat{LaTeX2e}
\LoadClass[11pt]{article}
\ProvidesPackage{main}[2021/01/01 Main Class]

% Set the font configuration.
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}

% Include packages for macros.
\RequirePackage{xargs} % Enables default arguments for \newcommand e.g, \newcommandx{\foo}[1][1=bar]{\foobar}.
\RequirePackage{suffix} % Enables a starred version of \newcommand e.g., \WithSuffix\newcommand\foo*{bar}.
\RequirePackage{calc} % Enables mathematical calculation e.g., \newlength{\mylength}\setlength{\mylength}{\textwidth-10pt}.

% Include packages for typesetting math.
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{amssymb}
\RequirePackage{amsfonts}
\RequirePackage{mathtools} % Provides \xrightarrow.
\RequirePackage{mathabx} % Provides \dashv.
\RequirePackage{braket} % Provides \set.
\RequirePackage{centernot} % Provides centered \not.

% Include packages for typesetting paragraphs.
\RequirePackage{enumitem} % Enables custom styling for enumerate and itemize environments.
\setlist[enumerate,1]{label=(\alph*)} % Sets the default label style for depth 1 enumerate environment.
\setlist[itemize,1]{label=\textbullet} % Sets the default label style for depth 1 itemize environment.
\newcommand{\skipto}[1]{\setcounter{enumi}{#1-1}} % For updating the list counter.
\RequirePackage{parskip} % Removes paragraph indents.
\RequirePackage[hidelinks]{hyperref} % Removes colored link boxes.
\RequirePackage{xcolor} % Enables colored text.
\RequirePackage[bottom]{footmisc} % Provides footnote at the page bottom.
\RequirePackage{bigfoot} % Provides verbatim environment in footnote.
\RequirePackage{fancyvrb} % Provides verbatim environment with escape characters e.g, \begin{Verbatim}.
\RequirePackage{tabularx} % Enables fixed column width in a table e.g., \begin{tabularx}{|X|X|}.
\RequirePackage{multirow} % Enables multiple rows in a table e.g, \multirow.
\RequirePackage{todonotes} % Provides \todo.

% Include packages for typesetting figures.
\RequirePackage{float} % Enables figures to be positioned here e.g., \begin{figure}[H].
\RequirePackage{graphicx} % Enables named arguments for \includegraphics.
\RequirePackage{wrapfig} % Provides figure environment with wrapping text e.g., \begin{wrapfigure}.
\RequirePackage{tikz} % For making diagrams.
\RequirePackage{tikz-cd} % For making commucative diagrams with TikZ.
\RequirePackage{circuitikz} % For making circuit diagrams with TikZ.
\RequirePackage{pgfplots} % For plotting graphs with TikZ.
\pgfplotsset{compat=1.18} % Set the version compatibility for PGFPlots.
\usetikzlibrary{positioning,shapes,shadows,arrows} % Add extra libraries for TikZ.
\RequirePackage{forest} % For making tree diagrams.
\RequirePackage{algorithm} % For writing pseudocode.
\RequirePackage{algpseudocode} % For writing pseudocode with enhanced features.
\RequirePackage{listings} % For writing code.
\lstset{language=Java} % Set the default language for listings.
\RequirePackage{logicproof} % For writing natural deduction.

% Set the default path for figures.
\graphicspath{ {./}{./img/}{./image/}{./images}{./fig}{./figure}{./figures} }

% Define custom math commands.
\newcommand{\C}{\mathbb{C}}
\newcommand{\R}{\mathbb{R}}
\newcommand{\Q}{\mathbb{Q}}
\newcommand{\N}{\mathbb{N}}

\renewcommand{\to}{\rightarrow}
\newcommand{\from}{\leftarrow}
\newcommand{\To}{\Rightarrow}
\newcommand{\From}{\Leftarrow}
\newcommand{\fromto}{\leftrightarrow}
\newcommand{\Fromto}{\Leftrightarrow}

\newcommand{\proves}{\vdash}
\renewcommand{\models}{\vDash}
\newcommand{\says}{\vDash}
\newcommand{\leftproves}{\dashv}
\newcommand{\leftmodels}{\Dashv}
\newcommand{\leftrightproves}{\dashv\vdash}
\newcommand{\leftrightmodels}{\Dashv\vDash}

\newcommand{\bigland}{\bigwedge}
\newcommand{\biglor}{\bigvee}

\newcommand{\diff}{\mathrm{d}}
\newcommand{\tuple}[1]{\langle #1 \rangle}

\newcommand{\rowop}[1]{\xrightarrow{\mathmakebox[\rowopwidth]{#1}}} % For writing row operations with a fixed arrow width e.g., \begin{aligned} &\rowop{r_1+r_2}\\.
\newlength{\rowopwidth} % Declare the arrow width.
\AtBeginDocument{\setlength{\rowopwidth}{3em}} % Initialize the arrow width.

% Define custom theorem environments.
\newtheorem{theorem}{Theorem}[section] % For introducing a theorem.
\newtheorem{corollary}{Corollary}[theorem] % For introducing a corollary. 
\newtheorem{lemma}{Lemma}[theorem] % For introducing a lemma.
\newtheorem*{remark}{Remark} % For unnamed short remarks about theorems, corollaries and lemmas.

% Define custom paragraph environments.
\newlist{myenumerate}{enumerate}{3} % Provides an alias of enumerate environment with the max depth of 3.
\newenvironment{myverbatim}{\begin{Verbatim}[commandchars=&\[\]]}{\end{Verbatim}} % Provides a verbatim environment with escape characters e.g., &foo[bar].
\newenvironment{mylstlisting}{\begin{lstlisting}[escapechar=\%]}{\end{lstlisting}} % Provides a lstlisting environment with escape characters e.g., %\foo{bar}%.
\newenvironment{mytabular}[1]{\bgroup\setlength{\tabcolsep}{1em}\renewcommand\arraystretch{2}\begin{tabular}{@{}#1@{}}}{\end{tabular}\egroup} % Provides a tabular environment with adjusted width and height.
\newenvironment{mytabularx}[2]{\bgroup\setlength{\tabcolsep}{1em}\renewcommand\arraystretch{2}\tabularx{#1}{@{}#2@{}}}{\endtabularx\egroup} % Provides a tabularx environment with adjusted width and height.

% Customize the style for tables.
\setlength{\tabcolsep}{0.5em} % Adjusts the table width.
\renewcommand\arraystretch{1.5} % Adjusts the table height.
\newcolumntype{Y}{>{\centering\arraybackslash}X} % Provides a column type with centered text.

% Customize the style for numbered sections.
\renewcommand{\thesection}{\arabic{section}} % Prefixes the section title with an arabic numeral.
\renewcommand{\thesubsection}{\roman{subsection}} % Prefixes the subsection title with a roman numeral.
\renewcommand{\thesubsubsection}{\alph{subsubsection}} % Prefixes the subsubsection title with an alphabet.
