echo " Enter File Name : "
read fname
touch $fname
echo -e "\n $fname is Created!"
echo -e "\n Enter Content in $fname : "
cat>$fname
echo -e "\n THe Content of File $fname are :"
cat $fname
echo -e "\n Word Count of File $fname"
wc $fname
echo -e "\n Sorted $fname"
sort $fname
echo -e "\n Content of File $fname in UpperCase : "
cat $fname | tr 'a-z' 'A-Z'
echo -e "\n Enter no. of Lines to be display :"
read fline
echo " First $fline of File $fname are :"
head -n $fline$fname
echo -e "\n Enter a word to Search"
read fword
echo "The Line is :"
grep $fword $fname
echo -e "\n Enter the New NAme for File $fname :"
read frname
mv -f $fname $frname
echo " File Renamed"
echo -e "\n Enter the Cut Position : "
read fcut
echo " The $fcut Characters are :"
cut -c $fcut $frname
echo -e "\n Enter the File Name to be Deleted : "
read fdel
rm $fdel
echo " File $fdel Deleted!"
