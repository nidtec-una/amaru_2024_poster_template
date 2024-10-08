% -----------------------------------------------------
% License:
% Copyright 2024 NIDTEC, FP-UNA
% This software is distributed under MIT License
% https://opensource.org/licenses/MIT
% -----------------------------------------------------
% Credits:
% This file was copied as is from the Overleaf project:
% https://www.overleaf.com/latex/templates/hylangtech-postertemplate/hnrppvmhxnwm
% under MIT License. 
% -----------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Hylangtechposter}[2017/11/27 class to DCM/FFCLRP/USP graduate manuscript template]

% --- Class structure: declaration of options part
% ---
% This class extends the a0poster class
% Read all the documentclass options; pass them to a0poster,
% unless the file "<currentoption>.ppgcaposter" exists, then it is loaded
\DeclareOption*{\InputIfFileExists{\CurrentOption.Hylangtechposter}{}{
    % 
    \PassOptionsToClass{\CurrentOption}{a0poster}}}

% --- Class structure: execution of options part
% ---
\ProcessOptions \relax
% --- Class structure: declaration of options part
% ---
\LoadClass{a0poster}

\ExecuteOptions{final}
\ProcessOptions

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% PACKAGES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{fontspec}
\RequirePackage{multicol} % This is so we can have multiple columns of text side-by-side
\columnsep=100pt % This is the amount of white space between the columns in the poster
\columnseprule=3pt % This is the thickness of the black line between the columns in the poster
\RequirePackage{babel}
\RequirePackage{babelbib}

\RequirePackage[svgnames]{xcolor} 
\RequirePackage{amsmath}
\RequirePackage{graphicx} % Required for including images
\RequirePackage{booktabs} % Top and bottom rules for table
\RequirePackage[font=small,labelfont=bf]{caption} % Required for specifying captions to tables and figures
\RequirePackage{amsfonts, amsmath, amsthm, amssymb} % For math fonts, symbols and environments
\RequirePackage{wrapfig} % Allows wrapping text around tables and figures
\RequirePackage{tikz}
\usetikzlibrary{calc}
\usetikzlibrary{fadings}
\RequirePackage{caption}
\RequirePackage{etoolbox}
\DeclareGraphicsRule{.ai}{pdf}{.ai}{}
\RequirePackage{lipsum}  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% FONTS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% size 24.88pt
\renewcommand{\tiny}{\fontsize{12}{14}\selectfont}
\renewcommand{\scriptsize}{\fontsize{14.4}{18}\selectfont}
\renewcommand{\footnotesize}{\fontsize{17.28}{22}\selectfont}
\renewcommand{\small}{\fontsize{20.74}{25}\selectfont}
\renewcommand{\normalsize}{\fontsize{24.88}{30}\selectfont}
\renewcommand{\large}{\fontsize{29.86}{37}\selectfont}
\renewcommand{\Large}{\fontsize{35.83}{45}\selectfont}
\renewcommand{\LARGE}{\fontsize{43}{54}\selectfont}
\renewcommand{\huge}{\fontsize{51.6}{64}\selectfont}
\renewcommand{\Huge}{\fontsize{61.92}{77}\selectfont}
\renewcommand{\veryHuge}{\fontsize{74.3}{93}\selectfont}
\renewcommand{\VeryHuge}{\fontsize{89.16}{112}\selectfont}
\renewcommand{\VERYHuge}{\fontsize{107}{134}\selectfont}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MARGINS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% A0 dimensions 841 x 1189 mm  33.1 x 46.8 in
\special{papersize=46.8in,33.1in}
\setlength{\paperwidth}{84.1cm}
\setlength{\paperheight}{118.9cm}
\setlength{\textwidth}{80.1cm}
\setlength{\textheight}{114.9cm}

\topskip0pt
\setlength{\headheight}{0pt}
\setlength{\headsep}{0pt}
\setlength{\topmargin}{0pt}
\setlength{\oddsidemargin}{0pt}

\setlength{\oddsidemargin}{3cm}

%\setlength{\columnsep}{2cm}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% COMMANDS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand\printheader{
%\begin{minipage}[ht]{0.15\linewidth}
%  \includegraphics[trim={0 15cm 0 0}, clip, scale=5]{HYlogo.png}
%\end{minipage}\vspace{2.5cm}
%\begin{minipage}[ht]{0.35\linewidth}\bf
  %{\Large UNIVERSITY OF HELSINKI}\\[0.3cm]
  %{\large FACULTY OF ARTS}\\[0.3cm]
  %Digital Humanities ~ Language Technology %Research Group
%\end{minipage} \hfill
\begin{minipage}[ht]{0.8\linewidth}\bf
\centering 
\vspace{3.0cm}
\begin{tabular}{lcr}
\includegraphics[scale=2.5]{Logo_CYTED_AMARU} & \qquad\qquad \hspace{10cm} %\includegraphics[scale=2.5]{} \hspace{15cm} %SI DESEA INCLUIR UN LOGO PUEDE HACERLO AQUI 
&\includegraphics[scale=2.5]{LOGO_UNA_FPUNA}\\
\end{tabular}
\\[5cm]
%        \includegraphics[trim={0mm 5mm 5mm 2mm}, clip, scale=.35]{eu.pdf} \quad 
%    \includegraphics[trim={32mm 55mm 30mm 5mm}, clip, scale=.63]{erc.ai} 
\end{minipage}\vspace{2.0cm}
%\begin{minipage}[ht]{0.2\linewidth}\bf
%    \includegraphics[trim={0mm 5mm 5mm 2mm}, clip, scale=.35]{eu.pdf} \quad 
%    \includegraphics[trim={32mm 55mm 30mm 5mm}, clip, scale=.63]{erc.ai} 
%\end{minipage}
}