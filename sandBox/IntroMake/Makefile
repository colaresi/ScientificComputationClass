pandoc-toc-sidebar/readMe.html : readMe.md testScatter.html 
	#pandoc readMe.md -s --mathjax -f markdown+tex_math_double_backslash --css=pandoc.css -t html -o readMe.html
	pandoc readMe.md -s --mathjax -f markdown+tex_math_double_backslash --template pandoc-toc-sidebar/toc-sidebarL.html --toc  -o pandoc-toc-sidebar/readMe.html

testScatter.html: createInteractiveScatter.py 
	python createInteractiveScatter.py 
	
