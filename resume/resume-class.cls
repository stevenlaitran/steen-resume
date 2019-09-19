\ProvidesClass{resume-class}[2019/09/13 Steven tran custon Resume Class]
\NeedsTeXFormat{LaTeX2e}

\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=.6cm, vmargin=1cm]{geometry}
\usepackage[hidelinks]{hyperref}

% Color definitions
\usepackage[usenames,dvipsnames]{xcolor} 
\definecolor{primary}{HTML}{666666} 
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}

% Sets default fonts
\usepackage{fontspec}
\usepackage{xcolor}
\usepackage[familydefault,light]{Chivo} %% Option 'familydefault' only if the base font of the document is to be sans serif
\usepackage[default]{cantarell} %% Use option "defaultsans" to use cantarell as sans serif only
\usepackage[T1]{fontenc}
\setmainfont[Color=primary]{cantarell}


%%%%%% Begin Sections commands

% Title Command
\newcommand{\titlesection}[2]{%
    \makebox[0pt][l]{
        \parbox{\textwidth}{
            \vspace{10pt}
            \fontsize{40pt}{60pt}
            \selectfont {\color{primary} #1}
        }
    }%
    \makebox[\textwidth][]{}%
    \makebox[0pt][r]{
        \parbox{\textwidth}{
            \raggedleft {\color{primary} #2}
        }
    \makebox[20pt][r]{}
    }
    \vspace{8pt}
    \hrule
    \vspace{8pt}
}

% Section seperators 
\usepackage{titlesec}
\titlespacing{\section}{0pt}{0pt}{0pt} 
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\newcommand{\sectionsep}{\vspace{6pt}}

% Headings command
\titleformat{\section}{\color{headings}
\scshape\fontspec{Chivo}\fontsize{16pt}{24pt}\selectfont \raggedright}{}{0em}{}

% Subheadings command
\titleformat{\subsection}{
\color{subheadings}\fontspec{Chivo}\fontsize{11pt}{12pt}\selectfont\bfseries\uppercase}{}{0em}{}

\newcommand{\runsubsection}[1]{
\color{subheadings}\fontspec{Chivo}\fontsize{11pt}{12pt}\selectfont\bfseries\uppercase {#1} \normalfont}

% Descriptors command
\newcommand{\descript}[1]{
\color{subheadings}\raggedright\scshape\fontspec{Chivo}\fontsize{11pt}{12pt}\selectfont {#1 \\} \normalfont}

% Location command
\newcommand{\location}[1]{
\color{headings}\raggedright\fontspec{Chivo}\fontsize{11pt}{12pt}\selectfont {#1\\} \normalfont}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{
\vspace{-\topsep}\begin{itemize}\renewcommand\labelitemi{-}\itemsep1pt \parskip0pt \parsep0pt}
{\end{itemize}\vspace{-\topsep}}

% content command
\newcommand{\content}[1]{
\scshape\color{primary}\fontspec{Chivo}\fontsize{11pt}{12pt}\selectfont {#1} \normalfont}