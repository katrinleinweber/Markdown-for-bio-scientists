---
title: Write in Word, \newline \textbf{Save in Markdown}, \newline Publish in \LaTeX
subtitle: May take some pain out of scientific writing.
author: Katrin Leinweber
date: 2015-Aug-31/-Sep-02
license: CC-BY-4.0 for own content; image attributions in titles
---


### Markdown can help you with...

\begin{center}
    \smartdiagram[bubble diagram]{
        Scientific\\Writing,
            publishing\\online,
            preparing\\lectures,
            writing\\manuscripts,
            reporting\\data,
            documenting\\experiments,
            taking\\notes
        }
\end{center}


### Background: Markup languages

\begin{center}
    \smartdiagram[sequence diagram]{
        text \& figures,
        markup,
        typeset,
        presentable document
        }
\end{center}

> - goal: concentrate on content, not appearance
> - most modern document formats are markup (`.docx` also)
> - Word just hide it & typesets continuously


### Background: Markup languages

\LaTeX\ (1985)[^latex]       | HTML (1992)[^html]     | \ 
-----------------------------|------------------------|---
`\textbf{bold}`              | `<strong>bold</strong>`| **bold**
`\emph{Species name}`        | `<i>Species name</i>`  | *Species name*
`\section{Heading 1}`        | `<h1>Heading 1</h1>`   | **Heading 1**
`\subsection{Heading 2}`     | `<h2>Heading 2</h2>`   | Heading 2
`\sout{strike out}`          | `<strike>out</strike>` | ~~strike out~~
`H\textsubscript{2}O`        | `H<sub>2</sub>O`       | H~2~O
`Ca\textsuperscript{2+}`     | `Ca<sup>2+</sup>`      | Ca^2+^

> - lots of formatting commands/syntax
> - only really readable in compiled form (PDF, website)

[^latex]: [latex-project.org](http://latex-project.org/)
[^html]: [w3.org/html](http://www.w3.org/html/)


### What is Markdown? Minimalistic markup language!

---               ---
`**bold**`        **bold**
`*Species name*`  *Species name*
`# Heading 1`     **Heading 1** 
`## Heading 2`    Heading 2
`~~strike out~~`  ~~strike out~~
`H~2~O`           H~2~O
`Ca^2+^`          Ca^2+^
---               ---

> - fast to type & easy to read, in many different programs
> - defined in 2004 by John Gruber[^df] & Aaron Swartz
> - built for online communication

[^df]: [daringfireball.net/projects/markdown](https://daringfireball.net/projects/markdown/syntax)



# Scientific use-case examples for Markdown (MD)


### Words of caution: try with finished doc, or small new one!

> - initial time investment to learn syntax & install tools
> - pays off later, esp. for large documents

> - emergency exit back to Word available: MD converts to `.docx`
> - different Markdown variants/flavours

\begin{figure}
  \centering
  \includegraphics[width=4cm]{images/dont-change-horses-in-middle-of-river.png}
  \caption{\href{http://www.ishestar.is/}{Íshestar} via \href{http://www.equitrekking.com/articles/entry/iceland_horseback_riding_vacation_photo_journey/}{equitrekking.com}}
\end{figure}


### MD use-case: digital lab journalling

![editors with live preview:
[![](images/markdownpad.png)\ MarkdownPad](https://markdownpad.com/),
[![](images/macdown.png)\ MacDown](http://macdown.uranusjr.com/), etc.
](images/lab-journal.png)


### MD use-case: annotating data analysis

![[RMarkdown.RStudio.com](https://rmarkdown.rstudio.com/)](images/rmarkdown.jpg)


### MD use-case: version control with Git

![30min intro at [konscience.de/git](http://www.konscience.de/2015/04/ksl002-digital-lab-journalling-with-git/)](images/file-changes-in-GitHub.png)


### MD use-case: universal document conversion

> - toolset: [Scientific Markdown by Jens Erat](https://github.com/JensErat/scientific-markdown)[^SMJE]

> - makes figure & table captions, citations, formulas, etc. available

> - bridges Markdown to \LaTeX

> - Don't TeX. Let software TeX for you!

[^SMJE]: [github.com/JensErat/scientific-markdown](https://github.com/JensErat/scientific-markdown/master/presentation.pdf)


### MD use-case: collaborating on publications

##### [![](images/authorea-fav.png)\ Authorea.com](https://authorea.com/)

> - collaborative manuscript preparation platform
> - integrates Mendeley, EndNote & Zotero
> - 1-click-formatting & submission available for several journals 


##### [![](images/peerj.png)\ PeerJ Paper Now](https://github.com/PeerJ/paper-now)

> - GitHub template for MD-formatted scientific texts & figures
> - generates & publishes article website[^PN]
> - no submission options (yet)


### *Write in Word?* Save in Markdown! Publish in \LaTeX!

> - [Writage.com](http://www.writage.com/) adds Markdown support into MS Word
> - produces more command symbols than necessary
> - renames media files & looses figure captions :-/

![](images/writage)



# Write in Word, \newline Save in Markdown, \newline Publish in \LaTeX



# ~~Write in Word,~~ \newline Use Markdown wherever possible, \newline Convert to whatever is necessary.



### Thanks for your attention! Questions?

- slides & recording (will appear) on [konscience.de/md](http://www.konscience.de/md)
- Markdown questions on [![](images/stackoverflow)\ StackOverflow.com](https://stackoverflow.com/questions/tagged/markdown)

##### Acknowledgements

- Ralf, Sarah, Sina, Xiaohui & all other retreat organisers
- [github.com/JensErat/scientific-markdown](https://github.com/JensErat/scientific-markdown)
