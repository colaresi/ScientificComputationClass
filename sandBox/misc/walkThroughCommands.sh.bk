#To be run interactively
mkdir demo
ls -a 
git init
ls -a
ls .git
echo "hello world" > temp.txt
ls -a
git status
git add temp.txt
git status
git commit -m "adding temp.txt to say hello"
git log
# then git cat-file -p the hash of the commit
# then git cat-file -p the hash of the tree
# then git cat-file -p the hash of the blob
# should be the text hellow world
echo "goodbye" >> temp.txt
echo "second file here" > data.txt
git status
git add temp.txt data.txt 
git commit -m "changed temp.txt to say goodbye and added data.txt"
git log --all --graph --decorate
# can follow hashes again with git cat-file -p ....


