clear
declare -A arr
declare -A ar2

read -p "Enter number of Rows :" r
read -p "Enter number of Cols :" c

echo "*** Enter First $r * $c Metrix values ***"

i=0
while [ $i -lt $r ]
do
    j=0
    while [ $j -lt $c ]
    do
        read -p "Enter Value for Array-1[$i,$j] = " arr[$i,$j]
        j=`expr $j + 1`
    done

    i=`expr $i + 1`
done

echo "*** Enter Second $r * $c Metrix values ***"

i=0
while [ $i -lt $r ]
do
    j=0
    while [ $j -lt $c ]
    do
        read -p "Enter Value for Array-2[$i,$j] = " ar2[$i,$j]
        j=`expr $j + 1`
    done

    i=`expr $i + 1`
done


echo " *********** Addition of two matrices ************ "

i=0
while [ $i -lt $r ]
do
    j=0
    echo -n "["
    while [ $j -lt $c ]
    do
        echo -n " " ${arr[$i,$j]} " "
        j=`expr $j + 1`
    done
    echo -n "] + "

    k=0
    echo -n "["
    while [ $k -lt $c ]
    do
        echo -n " " ${ar2[$i,$k]} " "
        k=`expr $k + 1`
    done
    echo -n "]"

    temp=0
    echo -n " = ["
    while [ $temp -lt $c ]
    do
        echo -n " " `expr ${arr[$i,$temp]} + ${ar2[$i,$temp]}` " "
        temp=`expr $temp + 1`
    done
    echo "]"

    i=`expr $i + 1`
done