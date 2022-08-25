<?xml version='1.0'?>

<!--********************************************************************
Copyright 2018 Robert A. Beezer

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

<!-- Conveniences for classes of similar elements -->
<!DOCTYPE xsl:stylesheet [
    <!ENTITY % entities SYSTEM "../entities.ent">
    %entities;
]>

<!-- Identify as a stylesheet -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<!-- Override specific tenplates of the standard conversion -->
<xsl:import href="./core/pretext-latex.xsl" />
<xsl:import href="./lin-alg-style.xsl" />

<!-- Intend output for rendering by pdflatex -->
<xsl:output method="text" />

<xsl:param name="latex.preamble.late">
  <xsl:text>%This should load all the style information that ptx does not.&#xa;</xsl:text>
  <xsl:text>\usepackage{setspace} </xsl:text>
  <xsl:text>% Add line break before and after some elements&#xa;</xsl:text>
  
  <xsl:text>\AtBeginEnvironment{example}{\vskip\baselineskip}&#xa;</xsl:text>
  <xsl:text>\AfterEndEnvironment{example}{\vskip\baselineskip}&#xa;</xsl:text>

  <xsl:text>\AfterEndEnvironment{divisionexercise}{\vskip\baselineskip}&#xa;</xsl:text>
  <xsl:text>\AtBeginEnvironment{definition}{\vskip\baselineskip}&#xa;</xsl:text>
  <xsl:text>\AfterEndEnvironment{definition}{\vskip\baselineskip}&#xa;</xsl:text>
  <xsl:text>\setlength{\parskip}{0.27\baselineskip}&#xa;</xsl:text>
</xsl:param>

</xsl:stylesheet>

