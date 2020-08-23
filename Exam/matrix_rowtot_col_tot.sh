declare -A aar rt ct
echo " -------- Row tatal and column total of matrix ------"
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

# Displaying matrix out-put with row column total.
echo "Displaying matrix out-put with row column total."
i=0
while [ $i -lt 3 ]
do
    j=0
    while [ $j -lt 3 ]
    do
	rt[$i]=`expr ${rt[$i]} + ${aar[$i,$j]}`
	ct[$i]=`expr ${ct[$i]} + ${aar[$j,$i]}`
        j=`expr $j + 1`
    done 

    i=`expr $i + 1`
done

i=0
while [ $i -lt 3 ]
do
    j=0
    while [ $j -lt 3 ]
    do
      	echo -n " "${aar[$i,$j]}" "
	j=`expr $j + 1`
    done
    echo -n " = "${rt[$i]}
    echo -e
    i=`expr $i + 1`
done

echo "------------------"
k=0

while [ $k -lt 3 ]
do
    echo -n " "${ct[$k]}" "
    k=`expr $k + 1`
done

