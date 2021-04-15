echo -e "\n ------Arithmetic Operations------\n"
echo " ENter Number 1:"
read n1
echo " Enter Number 2:"
read n2
echo -e "\n Addition of $n1 and $n2 = `expr $n1 + $n2`"
sub=$(($n1-$n2))
echo -e " Subtraction of $n1 and $n2 = $sub"
echo -e " Multiplication of $n1 and $n2 = `expr $n1 \* $n2`"
echo -e " Division of $n1 and $n2 = `expr $n1 / $n2`"
echo -e " Remainder of $n1 and $n2 = `expr $n1 % $n2`"
echo -e " Comparing $n1 and $n2 : "
if [ $n1 == $n2 ]
then
echo -e "                      $n1 is equal to $n2"
else
echo -e "                      $n1 is not equal to $n2"
fi
echo -e "\n\n ------GROSS SALARY------\n"
echo " Enter Basic Salary :"
read bs
da=$((($bs*4)/10))
hra=$((($bs*2)/10))
gs=$(($bs + $da + $hra))
echo " Gross Salary = $gs"
echo -e "\n\n ------SWAP TWO NUMBERS------\n"
echo " ENter Number 1:"
read a
echo " Enter Number 2:"
read b
temp=$a
a=$b
b=$temp
echo " First Number : $a ,  Second Number : $b"
echo -e "\n\n ------BMI CALCULATOR------\n"
echo " ENter your Height (m) :"
read h
echo " Enter your Weight (Kg) :"
read w
bm=$(echo "scale=2;$h * $h" | bc)
echo "$bm"
bmi=$(echo "scale=2;$w / $bm" | bc)
echo " BMI = $bmi"
