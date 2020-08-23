declare -A aar bar
# Program to multiply two 3*3 matrix.
echo "...Matrix Multiplication..."
# Entering value to matrix 1.
echo "Enter Values for first matrix -"
i=0
while [ $i -lt 3 ]
do
    j=0
    while [ $j -lt 3 ]
    do
        read -p "aar[$i,$j] : " aar[$i,$j]
        j=`expr $j + 1`
    done
    echo -e
    i=`expr $i + 1`
done
# Entering value to matrix 2.
echo "Enter Values for second matrix -"
i=0
while [ $i -lt 3 ]
do
    j=0
    while [ $j -lt 3 ]
    do
        read -p "bar[$i,$j] : " bar[$i,$j]
        j=`expr $j + 1`
    done
    echo -e
    i=`expr $i + 1`
done
# Displaying matrix multiplication.
echo "Displaying matrix multiplicaiton."
i=0
while [ $i -lt 3 ]
do
    j=0
    while [ $j -lt 3 ]
    do
        echo -n " [ "${aar[$i,$j]}" * " 
       	echo -n ${bar[$i,$j]}" = " 
        k=0
        temp=0
        mul=0
        while [ $k -lt 3 ]
        do
            temp=`expr ${aar[$i,$k]} \* ${bar[$k,$j]}`
            mul=`expr $mul + $temp`
            k=`expr $k + 1`
        done
        echo -n $mul" ] "
        j=`expr $j + 1`
    done
    echo -e
    i=`expr $i + 1`
done
