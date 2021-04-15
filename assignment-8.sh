echo -e "--------- VOWEL/CONSONANT--------\n"
echo " Enter any Character: "
read ch

case $ch in
     "a") echo " It is a vowel.";;
     "e") echo " It is a vowel.";;
     "i") echo " It is a vowel.";;
     "o") echo " It is a vowel.";;
     "0") echo " It is a vowel.";;
     *) echo " It is not a vowel."
esac

echo -e "\n\n--------NUMBERS-------"
echo " Enter a Number:"
read num
count=0
while [ $num -gt 0 ]
do
  num=$(($num/10))
  count=$((count+1))
done

case $count in
     1) echo "It is a 1-digit Number.";;
     2) echo "It is a 2-digit Number.";;
     3) echo "It is a 3-digit Number.";;
     *) echo "Error."
esac
