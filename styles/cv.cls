% styles/cv.cls

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv}[2026/ATS Friendly CV Class]

% Base class
\LoadClass[a4paper,12pt]{article}

% Geometry (ATS-safe)
\RequirePackage[
  left=0.7in,
  right=0.7in,
  top=0.5in,
  bottom=0.7in
]{geometry}

% OPTION 1 (PALING AMAN)
\RequirePackage{times}

% Basic packages
\RequirePackage{setspace}
\RequirePackage{hyperref}
\RequirePackage{enumitem}
\RequirePackage{tabularx}

% Spacing
\setstretch{1.0}
\setlength{\parindent}{0pt}
\setlength{\parskip}{2pt}

% Hyperref setup (NO COLOR)
\hypersetup{
  colorlinks=false,
  pdfborder={0 0 0}
}

% Section style
\RequirePackage{titlesec}
\titleformat{\section}
  {\large\bfseries}
  {}
  {0pt}
  {}

\titlespacing*{\section}{0pt}{8pt}{4pt}