# Markdown linting

I use `mdl` to lint markdown.

## Installation

The github page for this project is [here](https://github.com/markdownlint/markdownlint).
This is a ruby program. 
So you have to have a sufficiently up-to-date ruby install. 
On mac's this means using homebrew to update ruby. 

Directions on intallation are [here](https://github.com/markdownlint/markdownlint), if you scroll down to installation.

You will need to add `mdl` to your $PATH to call it. 
I copied the `mdl` command to`/usr/bin/`. 

## Running `mdl` at the command line

You can run `mdl` at the command line, if you have it in your path, and it is executable with

`mdl file.md`

where `file.md` is the file you want to lint. The output will be piped to std out. 

There are customizations you can make, for example excluding certain rules by name:

`mdl -r "~MD030, ~MD009" file.md`

This excludes two warnings I dislike, max line length and trailing white space. 
Both of which I do not fit with markdown uses particularly well. 

## Configuring with ALE

`mdl` should work in ALE by default, I believe, if it is installed.

## Configuring project specific command line running

Sometimes we want to exclude rules when running checks at the command line. 
We can do this by creating a `style` file. 

What we need to do to create a style is discussed [here](https://github.com/markdownlint/markdownlint/blob/master/docs/creating_styles.md).

The file must have the `.rb` suffix, and it should have the form

```
all
exclude_rule RULE_TO_EXCLUDE_HERE
RULE, :var => setting
```

You include all at the top to load everything, the generally we shut some warnings off. I like:

```
all
exclude_rule 'MD009'
exclude_rule 'MD040'
exclude_rule 'MD031'
rule 'MD013', :line_length => 500
```

Let's say this file is `configMDL.rb` and is in the `pwd`.

Then call `mdl` with:

`mdl -s "configMDL.rb" file.md`

