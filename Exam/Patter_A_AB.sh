echo "Pattern program to print Alfabatic pyramid"
i=65
read -p "Enter number of lines : " l

# Condition to check whether user etnter number or character.
# if [[ $l ~= ^[+-]?[0-9]+$ ]]
if ! [[ $l =~ ^[+-]?[0-9]+$ ]] 
then
	echo "is not a number"
else
	l=`expr $l + 65 - 1`
	# Loop for printing pattern
	echo -e
	while [ $i -le $l ]
	do
		j=65
		while [ $j -le $i ]
		do
			printf "\x$(printf "%x" $j )"
			j=`expr $j + 1`
		done
		echo -e
		i=`expr $i + 1`
	done
fi
