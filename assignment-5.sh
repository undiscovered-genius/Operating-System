echo -e "\n\n ------ODD EVEN----\n"
echo -e " Enter a Number :"
read num
check=$((num % 2))
if [ $check == 0 ]
then
    echo " $num is Even Number"
else
    echo " $num is Odd Number"
fi   


echo -e "\n\n ------Largest Number----\n"
echo " Enter First Number :"
read n1
echo " Enter Second Number :"
read n2
echo " Enter Third Number :"
read n3
if [ $n1 -gt $n2 ]
then
    if [ $n1 -gt $n3 ]
    then
        echo -e "\n $n1 is Largest"
    else
        echo -e "\n $n3 is Largest"
    fi
else
    if [ $n2 -gt $n3 ]
    then
        echo -e "\n $n2 is Largest"
    else
        echo -e "\n $n3 is Largest"
    fi
fi


echo -e "\n\n ------Leap Year----\n"
echo " Enter Year :"
read year
if [ $((year % 4)) == 0 ] 
then
    if [ $((year % 100)) == 0 ]
    then
        if [ $((year % 400)) == 0 ]
        then
            echo -e "\n $year is a Leap Year"
        else
            echo -e "\n $year is not a Leap Year"
        fi
    else
        echo -e "\n $year is a Leap Year"
    fi
else
    echo -e "\n $year is not a Leap Year"
fi


echo -e "\n\n ------BANK Portal----\n"
echo " Enter Account Balance :"
read ab
ab=$(echo "scale=2;$ab * 1.0" | bc)
echo -e "\n Enter Withdrawal Amount :"
read wa
if [ $wa -lt 1500 ]
then 
    tax=$(echo "scale=2;$wa * 0.03" | bc)
elif [ $wa -ge 1500 -a $wa -lt 3000 ]
then
    tax=$(echo "scale=2;$wa * 0.04" | bc)
else
    tax=$(echo "scale=2;$wa * 0.05" | bc)
fi
wa=$(echo "scale=2;$wa + $tax" | bc)
if [ ${wa%.*} -gt ${ab%.*} ]
then
    echo -e "\n Insufficient Balance"
else
    echo -e "\n Rs.$wa is Debited from your Account"
    ab=$(echo "scale=2;$ab - $wa" | bc)
    echo -e "\n Available Balance : Rs.$ab"
fi
echo -e "\n Portal Closed"
