---
title: Intro to Markdown and Linting
author: Michael Colaresi
...

<!-- ignore this for now-->
<script src="https://polyfill.io/v3/polyfill.min.js?features=es6"></script>
<script id="MathJax-script" async src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js"></script>
<!-- ignore this for now-->

#Intro to Markdown and  Linting
# Intro to Markdown Linting

Markdown is a way of telling your computer how to translate the plain text you type into an html file. 

This might be a little confusing because HTML is itself a langauge that tells a computer (really a browser) how to light up pixels in response to the text that is included in the document.

## Basics

Above you can see some atx headers (these define the header size), h1, h2, ect, which are tags in html. 

If you want to include a link you type 
(https://www.pitt.edu)[is this a link?] 
[this is a link](https://www.pitt.edu)

You can also add emphasis. 
This is **really** _great_.

`code goes here`

or like this:

```python
x=2
print(x)
```

But the fenced version only works in extensions of markdown like commonmark or github-flavored markdown. 
These are very common.

##Lists
## Lists
1. not
2. like
3. this

1. See
2. the 
3. difference

Can you create a bulleted list (no order to the item flags)

- this
- is
- another list


## Math

Can also include math:
\\[\left(\frac{\beta}{\epsilon}\right)\\]

But this means you need to either compile with pandoc (or another tool) or include the javascript near the top.
 This load MathJax, which allows LateX to be included.

Including math is very common

## yaml headers

Speaking of pandoc. You can include a header that is formatted as yaml. Using the dashes and dots to delinate the beginning and end of a record (dashes can be used at the end too). 

These take on key: value pairs, where the keys are arguments to pandoc and the values are what you want that key set to. You can also include lists (with leading hyphens) of settings to turn on.

An example header is at the top of this file.

It will not be parsed by the perl markdown parser; but will by pandoc.

Try it.

# Linting

Even though markdown is really simple, we often make mistakes. Mixing up (links)[links], no space after an atx style header, no blank line before a list.

