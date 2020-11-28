#! /usr/bin/env zsh

# set up colors
ORAN='\033[0;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

clear
#############################
echo -e "${RED}The Ugly"
echo -e "${ORAN}Take a look at the code below.\nWe should get 3.0, but the function in the file ThisIsWrong.py   is ...  wrong,"
echo -e "${ORAN}ThisIsWrong.py:"
pygmentize ThisIsWrong.py 

printf "\n\n"
read -sk '?Press any key to continue'

printf "\n\n"
echo -e "${ORAN}Because we did not type hint, mypy cannot help us"
echo -e "${ORAN}running python ThisIsWrong.py"
python ThisIsWrong.py

read -sk "?Press any key to continue"


printf "\n\n"
echo -e "${ORAN}The answer is 12, but should be 3.0."
printf "\n\n"
echo -e "${ORAN}ThisIsWrong.py Passes mypy because there are no constraints/info in type hints"
echo -e "${ORAN}running mypy ThisIsWrong.py"
mypy ThisIsWrong.py
printf "\n\n"

read -sk "?Press any key to continue"

clear
#############################
echo -e "${RED}The Bad"
echo -e "${ORAN}The file ThisIsWrongButMyPyWillHelp.py is still wrong, but mypy can help diagnose the problem"
echo -e "${ORAN}ThisIsWrongButMyPyWillHelp.py"
pygmentize -g ThisIsWrongButMyPyWillHelp.py
printf "\n\n"

read -sk "?Press any key to continue"

printf "\n\n"
echo -e "${ORAN}Since we placed type hints in the code to communicate what we intended the computer to do"
echo -e "${ORAN}mypy can catch disconnects between what we though we did and what we actually did"
mypy ThisIsWrongButMyPyWillHelp.py


printf "\n\n"
read -sk "?Press any key to continue"

printf "\n\n"
echo -e "${ORAN}EMBRACE FAILURE!! This is awesome. We now do not even have to run the file, we need to debug"
printf "\n\n"
read -sk "?Press any key to continue"
printf "\n\n"
echo -e "${ORAN}We can see above that our error is assuming float/ints when there is actually a string"

printf "\n\n"
read -sk "?Press any key to continue"

clear
#############################
echo -e "${RED}The Good"
echo -e "${ORAN}We can now explicitly add support for both strings and floats in a safe way"
echo -e "T${ORAN}ThisIsRight.py:"
pygmentize -g ThisIsRight.py

printf "\n\n"
read -sk "?Press any key to continue"

printf "\n\n"
echo -e  "${ORAN}Making sure it passes mypy now."
echo "${ORAN}Running mypy:"
mypy ThisIsRight.py

printf "\n\n"
echo -e "${ORAN}PASSED!"
echo -e "${ORAN}now lets use the function"
echo -e "running ThisIsRight.py"
python ThisIsRight.py
printf "\n\n"

read -sk "?Press any key to continue"
printf "\n\n"
echo -e "${ORAN}We now have the right answer and more useful code"

