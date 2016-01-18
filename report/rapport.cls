%(c) Classe réalisée par Albéric Trancart (promo '016)

%On définit une nouvelle classe définie à partir de book
\ProvidesClass{rapport}
\LoadClassWithOptions{book}

%La base (mettre english si rapport de stage en anglais)
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage[english]{babel}
\usepackage{csquotes} 

%On rectifie les marges pour centrer le document
\usepackage{geometry}
\geometry{bindingoffset=1.5cm}

%Pour remplir de bullshit
\usepackage{lipsum}

%Pour pouvoir mettre des images
\usepackage{graphicx}
\usepackage[section]{placeins}

%Pour mettre des retours à la ligne automatiques après les fins de paragraphes
\usepackage[parfill]{parskip}

%Pour mettre des liens dans le fichier
\usepackage[colorlinks=true,pdfmenubar=false,pdfpagemode=UseNone,urlcolor=black,linkcolor=black,citecolor=black,filecolor=black,pdfstartview=FitH]{hyperref}

%Pour plus de maths et de chimie
\usepackage{amsmath,amsfonts,amsthm,mathtools}
\usepackage[version=3]{mhchem}                               %Chimie
\usepackage{siunitx}                                         %Utilisation des unités SI
\usepackage{pgfplots}                                        %Graphes
\pgfplotsset{compat=1.8}
\pgfplotsset{
    every axis x label/.append style={
        alias=current axis xlabel
    },
    legend pos/outer south/.style={
        /pgfplots/legend style={
            at={%
                (%
                \@ifundefined{pgf@sh@ns@current axis xlabel}%
                {xticklabel cs:0.5}%
                {current axis xlabel.south}%
                )%
            },
            anchor=north
        }
    }
}

%Si vous avez besoin de mettre du code source par exemple:
% \begin{lstlisting}
% Put your code here.
% \end{lstlisting}
% Ou:
% \lstinputlisting[language=Python]{source_filename.py}
\usepackage{listings}
\usepackage{tabularx}
\usepackage{chngpage}

%Pour la bibliographie
\usepackage[backend=bibtex,sorting=none,firstinits=true]{biblatex}
\usepackage{url}

%Pour les tableaux
\usepackage{array} %Centrer les tableaux
\usepackage[hang, small,labelfont=bf,up,textfont=it,up]{caption} %Nom des tables personnalisés
\usepackage{booktabs} %Tables avec des lignes marquées

%On redéfinit des headers propres
\usepackage{fancyhdr}
\setlength{\headheight}{15.2pt}
\pagestyle{fancy}
\lhead{}
\chead{\textit{ \nouppercase{\leftmark}}}
\rhead{}

%Footers
\lfoot{}
\cfoot{}
\rfoot{}
\fancyfoot[LE,RO]{\thepage}

%On overwrite la fonction pour les début de chapitres
\fancypagestyle{plain}{%
  \fancyhf{}\fancyfoot[LE,RO]{\thepage}%
  \renewcommand{\headrulewidth}{0pt}}
  
%Un poil plus pratique
\newcommand\institute[1]{\large \textbf{#1}}

%On rédéfinit les chapitres
\usepackage{titlesec}
\titleformat{\chapter}[display]
  {\normalfont\Large\bfseries}
  {}{0pt}{\Huge}
\titleformat{\section}
  {\normalfont\large\bfseries}
  {\thesection}{1em}{}
  \titleformat{\subsection}
  {\normalfont}
  {\thesubsection}{1em}{}
\titlespacing*{\thechapter}{0pt}{0pt}{0pt}

\renewcommand\mainmatter{%
    \cleardoublepage
  \@mainmattertrue}

\usepackage[framed,numbered,final]{mcode}