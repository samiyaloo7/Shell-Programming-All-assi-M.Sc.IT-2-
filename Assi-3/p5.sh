clear
declare -A arr
odds=0
evens=0
zeros=0

read -p "Enter size of array :" n
echo "*** Enter $n values ***"

i=0
while [ $i -lt $n ]
do
    read -p "arr[$i] = " arr[$i]

    if test ${arr[$i]} -eq 0
    then
        zeros=`expr $zeros + 1`
    elif test `expr ${arr[$i]} % 2` -eq 1
    then
        odds=`expr $odds + 1`
    elif test `expr ${arr[$i]} % 2` -eq 0
    then
        evens=`expr $evens + 1`
    fi
    i=`expr $i + 1`
done
echo "*** You Entered ***"
echo ${arr[*]}
echo "Your entered $evens Evens, $odds Odds nad $zeros Zeros."