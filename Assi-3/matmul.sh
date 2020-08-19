declare -A arr brr crr
read -p "Enter size of matrix " n

echo "*** Enter $n * $n Metrix values ***"

i=0
while [ $i -lt $n ]
do
    j=0
    while [ $j -lt $n ]
    do
        read -p "Enter Value f or Array[$i,$j] = " arr[$i,$j]
        j=`expr $j + 1`
    done

    i=`expr $i + 1`
done

i=0
while [ $i -lt $n ]
do
    j=0
    while [ $j -lt $n ]
    do
        read -p "Enter Value for Array[$i,$j] = " brr[$i,$j] 
        j=`expr $j + 1`
    done

    i=`expr $i + 1`
done

#------------------------------------------------------
i=0
while [ $i -lt $n ]
do
    j=0
    while [ $j -lt $n ]
    do
        s=0;
        k=0
        while [ $k -lt $n ]
        do  
            mul=`expr ${arr[$i,$k]} \* ${brr[$k,$j]}`
            s=`expr $s + $mul`
            k=`expr $k + 1`
        done
        crr[$i,$j]=$s
        echo -n " " ${crr[$i,$j]}
        j=`expr $j + 1`
    done
    echo -e
    i=`expr $i + 1`
done