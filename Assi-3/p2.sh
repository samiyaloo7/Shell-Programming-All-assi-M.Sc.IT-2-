clear
declare -A arr
read -p "Enter size of array :" al

i=0
mini=0

while [ $i -lt $al ]
do
    read -p "Enter value for arr[$i] = " arr[$i]
    i=`expr $i + 1`
done

i=0
min=${arr[0]}
while [ $i -lt $al ]
do
    
    if test $min -gt ${arr[$i]}
    then
        min=${arr[$i]}
        mini=$i
    fi 
    i=`expr $i + 1`
done

echo "Mi Number from array is: " $min", at index no: "$mini 
