echo -e "\n\n ----REVERSE-----"
echo " Enter a Number "
read num
rev=0
nm=$num
while [ $num -gt 0 ]
do
  rm=$(($num%10))
  rev=$((($rev*10)+rm))
  num=$(($num/10))
done
echo -e "\n Reverse of $nm is $rev"

echo -e "\n\n ----POWER-----"
echo " Enter a Number "
read n
fn=$n
echo " Enter Power"
read pw
p=$pw
while [ $pw -gt 1 ]
do
  n=$(($n*$fn))
  pw=$(($pw-1))
done
echo -e "\n Value of $fn^$p is $n"

echo -e "\n\n ----TABLE----"
echo " Enter a Number to print its Table"
read tb
cnt=1
while [ $cnt -le 10 ]
do
  echo -e "\n $tb * $cnt = $(($tb*$cnt))"
  cnt=$(($cnt+1))
done

echo -e "\n\n ----Fibonacci Series-----"
echo " Enter a Number "
read fnum
fb=$fnum
cnt=0
cnt1=1
echo -e "\n THe Fibinacci Series is "
while [ $fnum -ge 0 ]
do
   echo -n " $cnt"
   fs=$(($cnt+$cnt1))
   cnt=$(($cnt1))
   cnt1=$fs
   fnum=$(($fnum-1))
done

