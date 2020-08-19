clear
declare -A arr
read -p "Enter size of array :" al

i=0
max=0
maxi=0

while [ $i -lt $al ]
do
    read -p "Enter value for arr[$i] = " arr[$i]
    if test $max -lt ${arr[$i]}
    then
        max=${arr[$i]}
        maxi=$i
    fi 
    i=`expr $i + 1`
done

echo "Max Number from array is: " $max", at index no: "$maxi 