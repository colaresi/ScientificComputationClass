#! \user\bin\env zsh
#This is a comment in zsh
#test if a file exists in pwd
test -f ids.dat
#look at a small file
cat ids.dat

#count lines in a file
wc -l ids.dat
#count words in a file
wc -w ids.dat
#count characters in a file
wc -m ids.dat

#there are duplicates though
uniq ids.dat
#what?
man uniq
#press q to get out of manual page
#so sort first
sort ids.dat
#but we want to sort and then uniq
#pipe!
sort ids.dat | uniq
#uniq has two useful flags
#output only the unique non-duplicates
sort ids.dat | uniq -u
#output only the non-unique duplicates
sort ids.dat | uniq -d
#we want the union of these sets, so we just use uniq
#lets output a file with the unique ids only (no duplication, but include all)
sort ids.dat | uniq > UniqueIDs
#we could cat this next, but a better way is to use tee
#tee allows you to create a file WHILE also outputing to std out
rm UniqueIDs
sort ids.dat | uniq | tee UniqueIDs
#now we get output from the std out and get our file
ls
#lets now count the unique ids in the file too
sort ids.dat | uniq | tee UniqueIDs | wc -l
#How do we output how many copies of an id/line were in a file
man uniq
#so we use uniq -c (for count)
sort ids.dat | uniq -c
#lets put that together with what we did before, and save the Counts
sort ids.dat | uniq -c | tee CountIDs | wc -l
#wc is a check
ls
#but the columns are in weird order, and we have spaces as delimiters
#we need to cut the columns at spaces, and then re-arrange
#pasting them back together
#cut -f -d, where -f is the column counts wanted, -d is the delimeter between columns
#look at what we have
cat CountIDs
#lots of spaces kind of messy
#lets squeeze those spaces together by translating many contiguous spaces into 1
# use tr -s SOMETHING for this tr = translate (character by character) and -s is squeeze
#the SOMETHING is a character that when it is repeated in seq, will be translated
#to 1 instance of that SOMETHING
#for us that is a space ' '
cat CountIDs | tr -s ' '
#then we will cut at the 3rd column, the ids, (count spaces over, with first being empty)
#delimeter -d is ' ' a space
cat CountIDs | tr -s ' ' | cut -f3 -d' '
#looks good so far, lets save those ids with tee (so we can see output too)
cat CountIDs | tr -s ' ' | cut -f3 -d' ' | tee tempIDs
#now lets use cut again to grap the counts, these are in the second column
cat CountIDs | tr -s  ' ' | cut -f2 -d' ' | tee tempCounts
#finally we paste them together so that the switch places, ids, then counts
#we will make this a comma separated file (.csv)
#before that, we will also add column headings
echo "id,count" > UniqueIDsCount.csv
paste -d, tempIDs tempCounts | tee -a UniqueIDsCount.csv
echo 'This is the final file we produced'
cat UniqueIDsCount.csv
#good idea to clean up
rm temp* CountIDs UniqueIDs
#in fact, we can do all of this in 5 lines
rm UniqueIDsCount.csv
sort ids.dat | uniq -c | tee CountIDs | wc -l
cat CountIDs | tr -s ' ' | cut -f3 -d' ' | tee tempIDs
cat CountIDs | tr -s  ' ' | cut -f2 -d' ' | tee tempCounts
echo "id,count" > UniqueIDsCount.csv
paste -d, tempIDs tempCounts | tee -a UniqueIDsCount.csv
rm temp* CountIDs
echo "done"
