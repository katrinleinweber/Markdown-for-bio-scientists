clean:
		--from markdown \
	pandoc \
		--slide-level 3 \
		--to beamer \
		--include-in-header header.tex \
		--output markdown.tex \
		test.md
	latexmk -pdflatex="xelatex --shell-escape %O %S" -pdf markdown.tex
	cp Markdown.pdf Markdown-test.pdf

core:
	pandoc \
		--slide-level 3 \
		--from markdown \
		--to beamer \
		--include-in-header header.tex \
		--output markdown.tex \
		README.md
	latexmk -pdflatex="xelatex --shell-escape %O %S" -pdf markdown.tex
	cp Markdown.pdf Markdown-core.pdf

writage:
	pandoc \
		--from markdown \
		--output markdown-Writage.pdf \
		'Writage demo.md'
