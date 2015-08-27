---
title: Write in Word, \newline \textbf{Save in Markdown}, \newline Publish in \LaTeX
subtitle: May take some pain out of scientific writing.
author: Katrin Leinweber
date: 2015-Aug-31/-Sep-02
license: CC-BY-4.0 for own content; image attributions in titles
---


### Markdown is a modern way of writing; has potential to modernise...

\begin{center}
    \smartdiagram[bubble diagram]{
        SCIENTIFIC\\WRITING,
            preparing\\lectures,
            preparing\\publications,
            analysing\\data,
            documenting\\experiments,
            taking\\notes
        }
\end{center}


### Background: Markup languages

\begin{center}
    \smartdiagram[sequence diagram]{
        text \& figures,
        add markup,
        typeset,
        presentable document
        }
\end{center}

> - goal: concentrate on content, not appearance
> - most modern document formats (`.docx`, `.odt`) are markup
> - word processors just hide it & typeset continuously


### Background: Markup languages

\               | \LaTeX\                      | HTML                 
---------------:|----------------------------- |------------------------
**bold**        | `\textbf{bold}`              | `<strong>bold</strong>`
*Species name*  | `\emph{Species name}`        | `<i>Species name</i>`  
**Heading 1**   | `\section{Heading 1}`        | `<h1>Heading 1</h1>`   
Heading 2       | `\subsection{Heading 2}`     | `<h2>Heading 2</h2>`   
~~strike out~~  | `\sout{strike out}`          | `<strike>out</strike>`
H~2~O           | `H\textsubscript{2}O`        | `H<sub>2</sub>O`
Ca^2+^          | `Ca\textsuperscript{2+}`     | `Ca<sup>2+</sup>`

> - lots of formatting commands/syntax
> - only really readable in compiled form (PDF, website)


### What is Markdown? Minimalistic markup language!

\               | Markdown              
---------------:|-----------------
**bold**        | `**bold**`
*Species name*  | `*Species name*`
**Heading 1**   | `# Heading 1`   
Heading 2       | `## Heading 2`  
~~strike out~~  | `~~strike out~~`
H~2~O           | `H~2~O`
Ca^2+^          | `Ca^2+^`

> - fast to type & easy to read, in many different programs
> - defined in 2004 by John Gruber[^df] & Aaron Swartz
> - based on email conventions, built for web publishing
> - has links, images, tables, footnotes, quotes and more[^syntax]

[^df]: [daringfireball.net/projects/markdown](https://daringfireball.net/projects/markdown/syntax)
[^syntax]: [guides.github.com/features/mastering-markdown](https://guides.github.com/features/mastering-markdown/#examples)



# Markdown use-case examples


### Words of caution: try with finished doc, or small new one!

> - initial time invest to learn syntax & install tools
> - pays off later, esp. for large documents

> - different variants have slightly different capabilities
> - way back to MS Word is always possible

\begin{figure}
  \centering
  \includegraphics[width=4cm]{images/dont-change-horses-in-middle-of-river.png}
  \caption{\href{http://www.ishestar.is/}{Íshestar} via \href{http://www.equitrekking.com/articles/entry/iceland_horseback_riding_vacation_photo_journey/}{equitrekking.com}}
\end{figure}


### Digital lab journalling

![(Check)lists, hyperlinks, images](images/lab-journal.png)


### Experiment summaries

![[RMarkdown.RStudio.com](https://rmarkdown.rstudio.com/)](images/rmarkdown.jpg)


### Proper document version control with Git

![30min intro at [konscience.de/git](http://www.konscience.de/2015/04/ksl002-digital-lab-journalling-with-git/)](images/file-changes-in-GitHub.png)


### Don't TeX. Let [pandoc.org](http://pandoc.org/index.html) TeX for you!

> - "universal document converter" by [John MacFarlane](http://johnmacfarlane.net/)

> - extends MD with figure & table captions, citations, math, etc.

> - usable in mixture with \LaTeX\ with [Scientific Markdown by Jens Erat](https://github.com/JensErat/scientific-markdown)[^SMJE]

[^SMJE]: [github.com/JensErat/scientific-markdown](https://github.com/JensErat/scientific-markdown)


### Some software tools with Markdown support

> - editors with live preview: [![](images/markdownpad.png)\ MarkdownPad](https://markdownpad.com/) & [![](images/macdown.png)\ MacDown](http://macdown.uranusjr.com/)

#### [![](images/authorea-fav.png)\ Authorea.com](https://authorea.com/)

> - collaborative manuscript preparation platform (also for \LaTeX)
> - integrates Mendeley, EndNote & Zotero
> - 1-click-formatting & submission available for several journals 

#### [![](images/peerj.png)\ PeerJ Paper Now](https://github.com/PeerJ/paper-now)

> - GitHub template for MD-formatted scientific texts & figures
> - generates & publishes article website[^PN]
> - no submission options (yet)

[^PN]: [read-lab-confederation.github.io/nyc-subway-anthrax-study](https://read-lab-confederation.github.io/nyc-subway-anthrax-study/)


### *Write in Word?* Save in Markdown! Publish in \LaTeX!

> - [Writage.com](http://www.writage.com/) adds Markdown support into MS Word
> - produces more command symbols than necessary
> - renames media files & looses figure captions :-/

![](images/writage)



# Write in Word, \newline Save in Markdown, \newline Publish in \LaTeX



# ~~Write in Word~~, \newline Write & Save in Markdown, \newline Publish in \LaTeX\ (or Word)


### Summary: easier collaboration & publication 

> - simple formatting rules
> - version control & syncing instead of e-mailing files
> - templates from publishers?

> - exploding in software development & web publishing
> - gaining traction in humanities
> - usable in natural sciences


### Thanks for your attention! Questions?

- Markdown questions on [![](images/stackoverflow)\ StackOverflow.com](https://stackoverflow.com/questions/tagged/markdown)
- live demo: [commonmark.org/dingus](http://spec.commonmark.org/dingus/)
- slides & recording (will appear) on [konscience.de/md](http://www.konscience.de/md)

##### Acknowledgements

- Ralf, Sarah, Sina, Xiaohui, and all other retreat organisers
- Jens Erat for [Scientific Markdown](https://github.com/JensErat/scientific-markdown)
