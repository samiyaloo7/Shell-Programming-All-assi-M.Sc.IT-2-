echo "Enter any value"
read a
case $a in
	[a-z])
		echo "Character value"
		;;
	[0-9])
		echo "Number value"
		;;
	*)
		echo "Special value"
esac

