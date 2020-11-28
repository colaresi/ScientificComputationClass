#!/usr/bin/env zsh

# Make html from readMe.md
pandoc readMe.md -f markdown+tex_math_double_backslash -t html5 -o readMe2.html --mathjax -s



