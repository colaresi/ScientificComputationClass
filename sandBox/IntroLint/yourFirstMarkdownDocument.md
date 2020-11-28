# Simple Markdown how to guide

This will walk you through creating your first markdown document.

**Markdown** is a useful format for:

- readMe files
- creating websites
- notes
- even academic papers (with extentions)

It is so useful that it has been incorporated into:

- github: where markdown files are shown as html
- jupyter notebooks: where cells can be written in markdown
- r markdown: R studio team's version of jupyter notebooks

Further, there are extensions that allow for:

- math (eg check out mathjax)
- tables (check out github-flavored markdown)
- yaml headers and external meta data (check out pandoc)

## Writing the markdown script

You write markdown in plain text, so vim, atom, sublime text, etc are great places to write markdown.

After writing or copying over the markdown file (like this one you are currently reading), you will need a parser, to translate the markup like the atx headings, bold, etc into html tags.

## Downloading a parser

There are many different parsers that read markdown files and produce html output.
We will talk about two.
The original perl parser and the pandoc implementation.

### The original markdown parser

The story of markdown is an interesting one and a triumph for open standards. 
You can read about it [here](https://daringfireball.net/projects/markdown/) [here](https://en.wikipedia.org/wiki/Markdown).

The original parser is written in perl, which you should have installed on your system. You can download it [here](https://daringfireball.net/projects/downloads/Markdown_1.0.1.zip).

In your home directory you can download the file at the command line with:
```
curl -O https://daringfireball.net/projects/downloads/Markdown_1.0.1.zip 
```

Sidenote: `curl` is a useful tool, if you do not already have it you should get it, see [this website](https://curl.haxx.se), but just download curl from a CLI package manager like homebrew.

You should also have an unzip command to uncompress the files

```
unzip Markdown_1.0.1.zip
```

This will uncompress a directory that has witin it a `Markdown.pl` file, this is the perl script that takes as an argument the markdown file to parse, and outputs html.

A command like this

```
perl ./Markdown_1.0.1/Markdown.pl yourFirstMarkdownDocument.md | tee yourFirstMarkdownDocument.html
```

will parse this document. 
The command makes a few assumptions, so you might have to change some paths. 
First, I am assuming that you downloaded the `Markdown_1.0.1.zip` file into the pwd, and that is where you unzipped it.
Second, I am assumint that you have this markdown file in the pwd.

If you have everything (and perl) you should be able to `ls` and see the output, you can then open the `yourFirstMarkdownDocument.html` in a browser (on a mac you can just type `open ...`, with the ... replaced by  the file name you want to open. 

### Using pandoc

Pandoc is discussed in the slides, so I will not go too indepth here. 
There is a great deal of information online, see [here](https://pandoc.org/MANUAL.html for the user guide). 

Follow the directions to install pandoc that are appropriate for your operating system, see [this page](https://pandoc.org/installing.html)

```
pandoc yourFirstMarkdownDocument.md -f markdown -t html -o yourFirstMarkdownDocument2.html
```

Pandoc has many, many extensions and options so this is a bare bones simple command.
 
- The `-f` flag says that we are going from some file type (here markdown).
- The `-t` flag says we are going to some other file type (here html).
- The `-o` flag defines the output path and name

You should get a similar, but often not identical html file.

## Extensions

See the pandoc markdown extensions list [here](https://pandoc.org/MANUAL.html#pandocs-markdown).

Since html is often the target, it is also useful to know about mathjax usage in pandoc markdown described [here](https://pandoc.org/MANUAL.html#math-rendering-in-html).

