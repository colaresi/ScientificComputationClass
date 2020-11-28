#! /usr/bin/env zsh
# format, lint, and type check a python module
# Args:
#    $1 name of .py file to check
# Returned:
#    output of black, pylint, and mypy if run as ./
echo "======================"
echo "Running black"
black "$1"
echo "======================"
echo ""
echo ""
echo "======================"
echo "Running pylint"
pylint "$1"
echo "======================"
echo ""
echo ""
echo "======================"
echo "Running mypy"
mypy "$1"
echo "======================"
echo ""
echo ""
echo "======================"
echo "Running test in module"
python "$1"
echo "======================"
echo ""
echo ""
echo "# done #"
