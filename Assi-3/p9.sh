clear
declare -A arr
declare -A ar2
declare rtot
declare ctot

read -p "Enter size of matrix " n

echo "*** Enter $n * $n Metrix values ***"

i=0
while [ $i -lt $n ]
do
    j=0
    while [ $j -lt $n ]
    do
        read -p "Enter Value for Array[$i,$j] = " arr[$i,$j]
        rtot[$i]=`expr ${rtot[$i]} + ${arr[$i,$j]}`
        j=`expr $j + 1`
    done
    i=`expr $i + 1`
done

echo " *********** Entered matrix is ************ "

i=0
while [ $i -lt $n ]
do
    j=0
    echo -n "["
    while [ $j -lt $n ]
    do
        echo -n " " ${arr[$i,$j]} " "
        ctot[$i]=`expr ${ctot[$i]} + ${arr[$j,$i]}`
        j=`expr $j + 1`
    done
    echo -n "] = "
    echo " " ${rtot[$i]} " "
    i=`expr $i + 1`
done

k=0    
echo "==========================="
echo -n "["
while [ $k -lt $n ]
do
    echo -n " " ${ctot[$k]} " "
    k=`expr $k + 1`
done
echo -n "]"