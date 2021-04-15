echo -e "--------- PATTERN--------\n"
echo " Enter a number :"
read n
for (( i=1; i<=$n;i++))
do
  for (( j=1;j<=i;j++))
  do
    echo -n "*"
  done
  echo -e "\n"
done
for (( i=$n-1;i>=1;i--))
do
  for (( j=1;j<=i;j++))
  do
    echo -n "*"
  done
  echo -e "\n"
done

echo -e "--------- CHESS BOARD--------\n"
echo -e -n "\033[40m"
for (( i=1;i<=8;i++ ))
do
  for (( j=1;j<=8;j++ ))
  do
    check=$(((i+j) % 2))
    if [ $check -eq 0 ]
    then
        echo -e -n "\033[47m   " # white
    else
        echo -e -n "\033[40m   " # black
    fi
  done
  echo -e -n "\033[40m\033[m" # black
  echo ""
done 

echo -e "--------- WAGES--------\n"
din=1
weekday=350
weekend=550
for day in Mon Tue Wed Thu Fri Sat Sun
do
  if [ $day == Sun ]
  then
      echo -e "\n Day $din : $day (Weekend), wage = $weekend"
  else
      echo -e "\n Day $din : $day (Weekday), wage = $weekday"
  fi
  din=$((din+1))
done

echo -e "--------- FACTORIAL--------\n"
echo "Enter a number :"
read f
factorial=1
for (( i=$f;i>=1;i-- ))
do
  factorial=$((factorial * i))
done
echo "Factorial of $f is $factorial"
