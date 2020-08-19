clear
declare -A arr
read -p "Enter size of array :" al

i=0
while [ $i -lt $al ]
do
    read -p "Enter value for arr[$i] = " arr[$i]
    i=`expr $i + 1`
done

i=0
temp=`expr $al - 1`
while [ $i -lt $temp ]
do
    j=0
    temp2=`expr $al - $i - 1`
    while [ $j -lt $temp2 ]
    do
        jp=`expr $j + 1`
        if test ${arr[$j]} -gt ${arr[$jp]} 
        then
            temp=${arr[$j]}
            arr[$j]=${arr[$jp]}
            arr[$jp]=$temp
        fi
        j=`expr $j + 1`
    done
    i=`expr $i + 1`
done

echo -n ${arr[*]}