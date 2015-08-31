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
            analysing\\data,
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

> - design philosophy[^dp]: separate content from presentation
> - most modern document formats are markup
> - word processors just typeset continuously

[^dp]: [en.wikipedia.org/wiki/Separation_of_presentation_and_content](https://en.wikipedia.org/wiki/Separation_of_presentation_and_content)

### Background: Markup languages

\LaTeX\ (1985)               | HTML (1992)            | \ 
-----------------------------|------------------------|---
`\textbf{bold}`              | `<strong>bold</strong>`| **bold**
`\emph{Species name}`        | `<i>Species name</i>`  | *Species name*
`\section{Heading 1}`        | `<h1>Heading 1</h1>`   | **Heading 1**
`\subsection{Heading 2}`     | `<h2>Heading 2</h2>`   | Heading 2
`\sout{strike out}`          | `<strike>out</strike>` | ~~strike out~~

> - a lot of formatting commands
> - only really readable in typeset form (PDF, website)
> - but machine-readable


### What is Markdown? Minimalistic markup language!

---               ---
`**bold**`        **bold**
`*Species name*`  *Species name*
`# Heading 1`     **Heading 1** 
`## Heading 2`    Heading 2
`~~strike out~~`  ~~strike out~~
---               ---

> - fast to type & easy to read (for both human & machine)
> - defined in 2004 by John Gruber[^df] & Aaron Swartz
> - designed for web publishing => converts to HTML
> - has links, images, lists, quotes, etc.

[^df]: [daringfireball.net/projects/markdown](https://daringfireball.net/projects/markdown)



# Science-related use-case examples for Markdown (MD)


### Words of caution: try with finished doc, or small new one!

> - up-front time investment to install tools & get used to MD
> - accept hand-over of styling & templating to others
> - return to `.docx` possible in any case

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


### Use-case: easier collaboration on manuscripts

##### [![](images/peerj.png)\ Paper Now: github.com/PeerJ/paper-now](https://github.com/PeerJ/paper-now)

> - Git-based template & generator for article websites
> - no submission options (yet)

##### [![](images/authorea-fav.png)\ Authorea.com](https://authorea.com/)

> - academic text editor with citations, formulas, figures, commenting, etc.
> - 1-click-formatting & journal submission


### Use-case: bridging Scientific Markdown[^SMJE] to \LaTeX

![toolset for citations, table & figure captions, formulas, footnotes, etc.](images\scientific-markdown.png)

[^SMJE]: [github.com/JensErat/scientific-markdown](https://github.com/JensErat/scientific-markdown/master/presentation.pdf)


### **Write in Word?** Save in Markdown! Publish in \LaTeX!

> - [Writage.com](http://www.writage.com/) adds Markdown support in Word
> - messy plain text, renames media files & looses figure captions

![](images/writage)



# Write in Word, \newline Save in Markdown, \newline Publish in \LaTeX



# ~~Write in Word,~~ \newline Use Markdown wherever possible, \newline Convert to whatever is necessary.



### Thanks for your attention! Questions?

> katrin.leinweber@uni-konstanz.de
> 
> slides will appear on konscience.de/md

##### Acknowledgements

- retreat organisers
- [github.com/JensErat/scientific-markdown](https://github.com/JensErat/scientific-markdown)

##### Funding

![Actual lab work and thesis writing happened as well ;-)](images/funding.png)
