clear
declare -A arr
declare -A ar2

read -p "Enter size of matrix " n

echo "*** Enter $n * $n Metrix values ***"

i=0
while [ $i -lt $n ]
do
    j=0
    while [ $j -lt $n ]
    do
        read -p "Enter Value for Array[$i,$j] = " arr[$i,$j]
        j=`expr $j + 1`
    done

    i=`expr $i + 1`
done

echo " *********** Entered matrix is ************ "

i=0
flag=0
flag2=0
while [ $i -lt `expr $n - 1` ]
do
    j=`expr $i + 1`
    if test ${arr[$i,$i]} -eq ${arr[$j,$j]} 
    then
        flag=`expr $flag + 1`
    fi
    k=`expr $c + $j`
    if test ${arr[$i,$i]} -eq ${arr[$j,$k]} 
    then
        flag2=`expr $flag2 + 1`
    fi
    i=`expr $i + 1`
done

i=0
while [ $i -lt $n ]
do
    k=0
    echo -n "["
    while [ $k -lt $n ]
    do
        echo -n " " ${arr[$i,$k]} " "
        k=`expr $k + 1`
    done
    echo "]"
    i=`expr $i + 1`
done


if test $flag -eq `expr $n - 1`
then
    echo "Yes, Matrix is Diagonal"
elif test $flag2 -eq `expr $n - 1`
then
    echo "Yes, Matrix is Diagonal"
else
    echo "No, Matrix is not Diagonal"
fi