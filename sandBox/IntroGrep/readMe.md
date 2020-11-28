
greps to try out in this directory

`grep 'zebra' -r .`
`grep 'zebras' -r .`
`grep 'zebra[s]*' -r .`
`grep 'ox' -r .`
`grep '\wox\w'``

#substitute with sed (stream editor)
```grep '\,*'```
```cat varNames1.dat | sed 's/\,+//g'```

#separate last, first names when there are optional middle names and Suffixes
names.txt
```cat namesList.txt | sed -E 's/(^[a-zA-Z]+)\ *([I]*),\ ([a-zA-Z]+)\ *(.*)$/\1,\2,\3,\4/g'```
- -E -- extended, -r in non-OSX systems
- s  -- substitution in sed
- / -- delimiter, begin pattern to substitute
- () -- a capturing group, like defining a variable
- ^ -- anchor at beginning of a line
- [] --match a list of things [a-zA-Z] matches any lower or uppercase letter
- + -- a quantifier, that matches the previous expression 1 or more times
- \  -- an escaped  space, this is one space 
- *  -- is a quantifier that matches 0 or more times \ * matches 0 or more spaces
- () -- another capture group
- [IVX] --  matches I or V or X
- * -- match these 0 or more times
- , -- just matches a comma
- ([a-zA-Z]+) -- another capture group, similar to last name pattern
- \ * -- zero or more spaces
- (.*) -- another capture group, . matches any character, .* matches 0 or more of any character
- $ -- anchor at end of line
- / -- in sed this delimits parts of input, this ends the pattern to substitute
- \1 , \2, etc these refer to the capture groups, in order
- , -- just printing a comma between them
- / -- delimiting substitution, 
- g -- global return more than just 1 match per line

#More complicated example
sed cannot use lookahead and lookbehind (it is POSIX not PCRE based)
so just use perl! -p means wrap print command, -e says execute the string like a script
```cat varNames2.dat | perl -pe 's/(?<!x)_2//g'```

