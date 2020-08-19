echo "Enter number 1"
read a
echo "Enter number 2"
read b
echo "Enter number 3"
read c
if test $a -gt $b
then
	if test $a -gt $c
	then
	        echo "A is max"
	else
	        echo "C is max"
	fi
elif test $b -gt $c
then 
	echo "B is max"
else
	echo "C is max" 
fi

