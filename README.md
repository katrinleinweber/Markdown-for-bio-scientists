---
title: Write in Word, \newline Save in Markdown, \newline Publish in \LaTeX
subtitle: May take some pain out of scientific writing.
author: Katrin Leinweber \newline katrin.leinweber@uni.kn
date: 2015-Aug-31/-Sep-02
license: CC-BY-4.0 for own content; image attributions in titles
---


# This is not a scientific talk, but an introduction to a modern way of writing.

<!--
http://www.chembiol.uni-konstanz.de/statement.html says "training programs that transcend traditional disciplines"
Me, and the organisers apparently as well, believe it is relevant to many aspects of science
-->

### Any new way of writing may touch many aspects of science

\begin{center}
    \smartdiagram[bubble diagram]{
        SCIENCE,
            review\\literature,
            formulate\\hypotheses,
            prepare\\lectures,
            publish\\findings,
            analyse\\data,
            document\\observations,
            conduct\\experiments
        }
\end{center}

### Markdown advantages

> [...] a plain text formatting syntax [...] intended to be as easy-to-read and easy-to-write as is feasible.
> 
> -- John Gruber and Aaron Swartz (2004)[^1]

> - *plain text*: small files, fast loading & saving, interoperable
> - *formatting syntax*: annotation/formatting commands within your text
> - *easy-to-read*: few & small commands, compared \LaTeX, HTML & other markup languages
> - *easy-to-write*: automatable with [![](images/textexpander.png)\ TextExpander](http://smilesoftware.com/TextExpander/index.html) (Mac), [![](images/phraseexpress.png)\ PhraseExpress](http://www.phraseexpress.com/index.html) (Win), etc.[^at]
# Markdown is one such modern way of writing.

[^1]: [daringfireball.net/projects/markdown](https://daringfireball.net/projects/markdown/syntax)
[^at]: [alternativeto.net/tag/text-substitution](https://alternativeto.net/tag/text-substitution/)

### Markdown advantages over...

#### \LaTeX\ & other markup languages

> - flatter learning curve
> - made by and for the Internet

#### Word & other text processing software

> - wider choice of software (any text editor)
> - faster to type few commands than clicking buttons
> - convertible into \LaTeX\, see [github.com/JensErat/scientific-markdown](https://github.com/JensErat/scientific-markdown)
### What is Markdown? Plain text.

### Markdown syntax
> - small files load, save & sync faster
> - large choice of editors & related software tools

\ 				| Markdown    		| \LaTeX \ 
---------------:|-------------------|----------
**bold**		| `**bold**` 	    | `\textbf{bold}`
*Species name*	| `*Species name*` 	| `\emph{Species name}`
**Headline 1**  | `# Headline 1`    | `\section{Headline 1}`
Headline 2      | `## Headline 2`   | `\subsection{Headline 2}`
...             | `### Headline 3`  | `\subsubsection{Headline 3}`
...             | ...               | ...
![](images/filesizes.png)

> - high ratio of function-to-character  
> - more at [guides.github.com/features/mastering-markdown](https://guides.github.com/features/mastering-markdown/#examples)

### Application examples of Markdown in scientific publishing
### Markdown editors
# Using Markdown for...
### What is Markdown? Markup language.

- Humanities going digitally faster than natural sciences?
Windows | Mac OS X | both + Linux
-|-|-
[![](images/markdownpad.png)\ MarkdownPad](https://markdownpad.com/) | [![](images/macdown.png)\ MacDown](http://macdown.uranusjr.com/) | [![](images/atom.png)\ Atom](https://atom.io/)
\ | [![](images/mou.png)\ Mou](http://25.io/mou/) | [![](images/brackets.png)\ Brackets](http://brackets.io/)
\ | \ | [![](images/sublime.png)\ Sublime](https://www.sublimetext.com/)
### ... digital lab journalling
\begin{center}
    \smartdiagram[sequence diagram]{
        unformatted text,
        markup / formatting,
        presentable document
        }
\end{center}

- [Scholarly Markdown](http://scholarlymarkdown.com/), [pandoc](http://pandoc.org/index.html), etc. extend classical markdown syntax for academics (citations, figures, tables, bibliographies)
 
### Save in Markdown
![(Check)lists, hyperlinks, images](images/lab-journal.png)

### ... experiment summaries

![[RMarkdown.RStudio.com](http://rmarkdown.rstudio.com/)](images/rmarkdown.jpg)

### ... better document versioning than this:

![](images/versions-win-explorer.png)

### ... better document versioning with Git:

![30min Git intro at [konscience.de/git](http://www.konscience.de/2015/04/ksl002-digital-lab-journalling-with-git/)](images/file-changes-in-GitHub.png)
### Words of caution: Different dialects/flavors

> - similar to \LaTeX\ templates, classes & styles
> - any is fine for simple document

![](images/MD-Venn.png)


### Enables Open Science



### \LaTeX\ & Markdown can be edited collaboratively

### Offline editors
#### [![](images/peerj.png)\ PeerJ Paper Now](https://github.com/PeerJ/paper-now)

Windows | Mac OS X | both + Linux
-|-|-
[![](images/markdownpad.png)\ MarkdownPad](https://markdownpad.com/) | [![](images/macdown.png)\ MacDown](http://macdown.uranusjr.com/) | [![](images/atom.png)\ Atom](https://atom.io/)
\ | [![](images/mou.png)\ Mou](http://25.io/mou/) | [![](images/brackets.png)\ Brackets](http://brackets.io/)
\ | \ | [![](images/sublime.png)\ Sublime](https://www.sublimetext.com/)
> - template for MD-formatted scientific texts & figures
> - generates & publishes article website[^PN]

### Online editors
[^PN]: [katrinleinweber.github.io/paper-now](https://katrinleinweber.github.io/paper-now/)

- [![](images/sharelatex-fav.png)\ ShareLaTeX.com](https://www.authorea.com/)
- [![](images/overleaf-fav.png)\ Overleaf.com](https://www.overleaf.com/)
- [![](images/authorea-fav.png)\ Authorea.com](https://www.sharelatex.com/)

> - and versioned in order to stop this:
![](images/versions-win-explorer.png "")
> - more at [konscience.de/git](http://www.konscience.de/2015/04/ksl002-digital-lab-journalling-with-git/)

### Write in Word

- exponentially increasing learning curve
- [Writage add-in ](http://www.writage.com/) 

### Words of caution: try with finished doc, or small new one!


> - initially steep learning curve:
>     - memorising MD syntax
>     - set-up of text editor, automations & other tools
> - but getting easier with time, regardless of document size

\begin{figure}
  \centering
  \includegraphics[width=4cm]{images/dont-change-horses-in-middle-of-river.png}
  \caption{\href{http://www.ishestar.is/}{Íshestar} via \href{http://www.equitrekking.com/articles/entry/iceland_horseback_riding_vacation_photo_journey/}{equitrekking.com}}
\end{figure}


### *Write in Word?* Save in Markdown! Publish in \LaTeX!

> - [Writage.com](http://www.writage.com/) adds Markdown support into MS Word
> - produces more command symbols than necessary
> - renames media files & looses figure captions :-/

![](images/writage)

<!--suboptimal => go the whole way to writing Markdown yourself-->



# Write in Word, \newline Save in Markdown, \newline Publish in \LaTeX



# ~~Write in Word~~, \newline Write & Save in Markdown, \newline Publish in \LaTeX


### Thanks for your attention! Questions?

- katrin.leinweber@uni.kn
- Markdown questions on [![](images/stackoverflow.png)\ StackOverflow.com](https://stackoverflow.com/questions/tagged/markdown)
- live demo: [commonmark.org/dingus](http://spec.commonmark.org/dingus/)
- more syntax: [guides.github.com/features/mastering-markdown](https://guides.github.com/features/mastering-markdown/#examples)
- recording will appear on [konscience.de/md](http://www.konscience.de/md) soon

##### Acknowledgements

- Ralf, Sarah, Sina, Xiaohui, and all other retreat organisers
- [Scientific Markdown by Jens Erat](https://github.com/JensErat/scientific-markdown)

![](images/funding.png)
