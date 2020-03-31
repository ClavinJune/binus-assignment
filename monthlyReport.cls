\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{monthlyReport}[2020/03/30 Monthly Report class]

\LoadClass[12pt, letterpaper]{article}
\usepackage[utf8]{inputenc}
\usepackage{geometry}
\usepackage{fancyhdr}
\usepackage{changepage}
\usepackage{lipsum}
\usepackage{hyperref}
\usepackage{enumitem}

\geometry{ left=25mm, right=25mm, bindingoffset=0mm, top=20mm, bottom=20mm }
\pagestyle{fancy}
\fancyhf{}
\setlength{\headheight}{15pt}
\lhead{Clavianus Juneardo – 2001539682}

\hypersetup{colorlinks=true,linkcolor=blue,urlcolor=blue}
\urlstyle{rm}

\makeatletter
\newenvironment{modpar}[1][3.5em]
  {\list{}{
    \itemindent\parindent
    \leftmargin#1
    \parsep\z@\@plus\p@}
    \item\relax}
  {\endlist}
 
\newenvironment{modlist}[1][\textbullet]
{\begin{enumerate}[label=#1, leftmargin=5em]}
{\end{enumerate}}
\makeatother

\newcommand{\setMonth}[1]{
  \rhead{#1 Monthly Report}
}

\newcommand{\getFromFile}[1]{
  \input{#1}
}

\newcommand{\p}[2][3.5em]{
  \begin{modpar}[#1]
    #2
  \end{modpar}
}

