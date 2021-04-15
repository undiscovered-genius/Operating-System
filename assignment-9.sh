echo "--------COMPARE STRINGS-------"
echo -e "\n Enter data into 1st String:"
read str1
echo -e "\n Enter data into 2nd String:\t"
read str2
if [ $str1 == $str2 ]
then
    echo "Result : Strings are Equal."
else
    echo "Resut : Strings are Not-Equal."
fi

echo -e "\n\n--------CONCATENATE STRINGS-------"
echo -e "\n Enter data into 1st String:"
read str3
echo -e "\n Enter data into 2nd String:"
read str4
conStr=${str3}${str4}
echo -e "\n Concatenated String : $conStr"

echo -e "\n\n--------STRINGS LENGTH-------"
len=`echo -n $str3 | wc -m`
echo " Length of $str3 : $len"

echo -e "\n\n--------ODD Position-------"
echo " Enter a 5-digit Number:"
read num
ln=`echo -n $num | wc -m`
n=1
while [ $n -le 5 ]
do
  a=`echo $num | cut -c $n`
  echo -n "$a"
  n=`expr $n + 2`
done

echo -e "\n\n--------PALINDROME-------"
echo " Enter a Number:"
read num
rev=$(echo $num | rev)
if [ $num -eq $rev ]
then
    echo -e "\n Number is palindrome"
else
    echo -e "\n Number is not palindrome"
fi

echo -e "\n\n--------REVERSE STRING-------"
echo -e "\n Enter data in String:"
read str5
revStr=`echo $str5 | rev`
echo -e "\n Reverse of $str5 is $revStr"

echo -e "\n\n--------OCCURANCE OF CHARACTER-------"
cnt=$(grep -o "e" < assignment9.sh | wc -l)
echo -e "\n Occurance of 'e' in this File is: $cnt"

echo -e "\n\n--------DELETE SHORTEST/LONGEST SUBSTRING-------"
