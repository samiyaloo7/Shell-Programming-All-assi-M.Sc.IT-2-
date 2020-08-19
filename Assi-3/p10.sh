clear
declare -A arr

read -p "Enter numbers of Rows " r
read -p "Enter numbers of Colls " c

echo "*** Enter $r * $c Metrix values ***"

i=0
while [ $i -lt $r ]
do
    j=0
    while [ $j -lt $c ]
    do
        read -p "Enter Value for Array[$i,$j] = " arr[$i,$j]
        j=`expr $j + 1`
    done

    i=`expr $i + 1`
done

echo " *********** Transpose of matrix is ************ "

i=0
while [ $i -lt $c ]
do
    j=0
    echo -n "["
    while [ $j -lt $r ]
    do
        echo -n " " ${arr[$j,$i]} " "
        j=`expr $j + 1`
    done
    echo "]"
    i=`expr $i + 1`
done