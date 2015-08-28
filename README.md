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
        typesetting,
        document
        }
\end{center}

> - design philosophy: separate content from presentation
> - most modern document formats are markup (`.docx` also)
> - Word just hide it & typesets continuously


### Background: Markup languages

\LaTeX\ (1985)               | HTML (1992)            | \ 
-----------------------------|------------------------|---
`\textbf{bold}`              | `<strong>bold</strong>`| **bold**
`\emph{Species name}`        | `<i>Species name</i>`  | *Species name*
`\section{Heading 1}`        | `<h1>Heading 1</h1>`   | **Heading 1**
`\subsection{Heading 2}`     | `<h2>Heading 2</h2>`   | Heading 2
`\sout{strike out}`          | `<strike>out</strike>` | ~~strike out~~

> - lots of formatting commands/syntax
> - only really readable in compiled form (PDF, website)


### What is Markdown? Minimalistic markup language!

---               ---
`**bold**`        **bold**
`*Species name*`  *Species name*
`# Heading 1`     **Heading 1** 
`## Heading 2`    Heading 2
`~~strike out~~`  ~~strike out~~
---               ---

> - fast to type & easy to read; like plain text email
> - defined by John Gruber[^df] & Aaron Swartz in 2004
> - has links, images, lists, quotes, etc.

[^df]: [daringfireball.net/projects/markdown](https://daringfireball.net/projects/markdown/syntax)



# Use-case examples


### Words of caution: try with finished doc, or small new one!

> - initial time investment to learn syntax & install tools
> - pays off later, esp. for large documents
> - different Markdown variants/flavours
> - return to `.docx` is possible in any case

\begin{figure}
  \centering
  \includegraphics[width=4cm]{images/dont-change-horses-in-middle-of-river.png}
  \caption{\href{http://www.ishestar.is/}{Íshestar} via \href{http://www.equitrekking.com/articles/entry/iceland_horseback_riding_vacation_photo_journey/}{equitrekking.com}}
\end{figure}


### Use-case: digital lab journalling

![editors with live preview:
[![](images/markdownpad.png)\ MarkdownPad](https://markdownpad.com/),
[![](images/macdown.png)\ MacDown](http://macdown.uranusjr.com/), etc.
](images/lab-journal.png)


### Use-case: documenting data analysis

![
[![](images/rstudio.png)\ RMarkdown.RStudio.com
](https://rmarkdown.rstudio.com/)
](images/rmarkdown.jpg)


### Use-case: plain text version control with Git

![30min intro at [konscience.de/git](http://www.konscience.de/2015/04/ksl002-digital-lab-journalling-with-git/)](images/file-changes-in-GitHub.png)


### Use-case: writing thesis in Scientific Markdown[^SMJE] & \LaTeX

![toolset for citations, table & figure captions, formulas, footnotes, etc.](images\scientific-markdown.png)

[^SMJE]: [github.com/JensErat/scientific-markdown](https://github.com/JensErat/scientific-markdown/master/presentation.pdf)


### Use-case: easier collaboration on manuscripts

##### [![](images/authorea-fav.png)\ Authorea.com](https://authorea.com/)

> - academic text editor with citations, formulas, figures, commenting, etc.
> - 1-click-formatting & journal submission

##### [![](images/peerj.png)\ Paper Now: github.com/PeerJ/paper-now](https://github.com/PeerJ/paper-now)

> - Git-based template & generator for article websites
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
