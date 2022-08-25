<?xml version='1.0'?>

<!--********************************************************************
Copyright 2019 Oscar Levin

This file is part of PreTeXt.

PreTeXt is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 2 or version 3 of the
License (at your option).

PreTeXt is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with PreTeXt.  If not, see <http://www.gnu.org/licenses/>.
*********************************************************************-->

<!DOCTYPE xsl:stylesheet [
    <!ENTITY % entities SYSTEM "./core/entities.ent">
    %entities;
]>

<!-- Identify as a stylesheet -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
    xmlns:xml="http://www.w3.org/XML/1998/namespace"
    xmlns:exsl="http://exslt.org/common"
    xmlns:date="http://exslt.org/dates-and-times"
    xmlns:str="http://exslt.org/strings"
    xmlns:pi="http://pretextbook.org/2020/pretext/internal"
    extension-element-prefixes="exsl date str"
>



<!-- Intend output for rendering by pdflatex -->
<xsl:output method="text" encoding="UTF-8"/>

<!-- Looking for table/matrix shading? This is actually a feature of the package `colortbl` and -->
<!-- is not an XSL customization. See sec_inv_cramers, sec_det_transpose, and sec_cofactor_expand -->
<!-- for LaTeX code (\cellcolor). -->

<!-- Update page headers to fit all of the title content -->
<xsl:template match="book" mode="titleps-style">
 <xsl:text>%% Plain pages should have the same font for page numbers
%% Custom template to change chapter and section titles in header
%% No longer in all caps or italicized
\renewpagestyle{plain}{%
\setfoot{}{\pagefont\thepage}{}%
}%
%% Two-page spread as in default LaTeX
%% Custom
\renewpagestyle{headings}{%
\sethead%
[\pagefont\thepage]%
[]
[\pagefont{\ifthechapter{\chaptertitlename\space\thechapter.\space}{}\chaptertitle}]%
{\pagefont{\ifthesection{\thesection.\space\sectiontitle}{}}}%
{}%
{\pagefont\thepage}\setheadrule{.8pt}%
}%
\pagestyle{headings}
</xsl:text>
</xsl:template>

<!-- Remove diamond (\lozenge) from end of definitions -->
<xsl:template match="definition" mode="tcb-style">
 <xsl:text>{bwminimalstyle, runintitlestyle, blockspacingstyle, after title={\space}, }</xsl:text>
</xsl:template>

<xsl:template match="figure" mode="tcb-style">
 
</xsl:template>

<!-- Center justify text in figure captions -->
<xsl:template match="figure" mode="environment">
 <xsl:text>\tcbset{ figureptxstyle/.style={bwminimalstyle, middle=1ex, blockspacingstyle, fontlower=\blocktitlefont} }&#xa;</xsl:text>
 <xsl:text>\newtcolorbox[use counter from=block]{figureptx}[3]{lower separated=false, before lower=\begin{center} {{\textbf{Figure~\thetcbcounter}\space#1}} \end{center}, phantomlabel={#2}, unbreakable, parbox=false, figureptxstyle, }</xsl:text>
</xsl:template>

<!-- Add box around all objectives -->
<xsl:template match="objectives" mode="tcb-style">
 <xsl:text>{size=normal, colback=white, colbacktitle=white, coltitle=black, colframe=black, blockspacingstyle, sharp corners, fonttitle=\blocktitlefont\large\bfseries, titlerule=0ex, toprule=0.3ex, toptitle=0.5ex, top=2ex, bottom=0.5ex, bottomrule=0.3ex}</xsl:text>
</xsl:template>

</xsl:stylesheet>