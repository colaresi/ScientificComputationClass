#Shell Scripting
This is a project to explore shell scripting


#Description of directories and files

checkFileExists/ -- A directory that includes for for basic conditions
  ifElseExample.sh -- Simple script with a hard coded file to check, simplest if else
  checkFileExists.sh -- generalizes ifElseExample.sh into a command that can be run with an argument
  ids.dat -- a file that is there to check if it exists or not

checkNames/ -- A directory that includes files for a for loop example (with special characters)
  simpleScript1.sh -- more complicated example with for loop special characters and condition; as well as some string substitution
  .csv files -- there to test whether their names match as they should

testArgs.sh -- a script that illustrates how zsh allows arguments to be used within scripts

##Notes
For execute permissions, might need chmod 754 XXX, where XXX is for script name

Extension for simpleScript1.sh is to turn it into a runnable script that takes an argument for where to look for the files to check
