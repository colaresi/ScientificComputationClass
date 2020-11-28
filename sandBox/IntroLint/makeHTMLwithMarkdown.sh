#!/usr/bin/env zsh

#make html with the original markdown parser (written in perl)
#available 
#here https://daringfireball.net/projects/downloads/Markdown_1.0.1.zip
#assuming that markdown parser was unzipped in pwd

perl ./Markdown_1.0.1/Markdown.pl readMe.md | tee readMe.html
