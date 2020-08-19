clear
read -p "Enter char(A-Z/a-z) : " ch
l=$(printf "%d" "'$ch")
if test $l -le 90 -a $l -ge 65
then
    i=$l
    while [ $i -ge 65 ]
    do
        j=65
        while [ $j -le $i ]
        do
            echo -n " " $(printf "\x$(printf %x $j)")
            j=`expr $j + 1`
        done
        echo -e
        i=`expr $i - 1`
    done
elif test $l -le 122 -a $l -ge 97
then
    i=$l
    while [ $i -ge 97 ]
    do
        j=97
        while [ $j -le $i ]
        do
            echo -n " " $(printf "\x$(printf %x $j)")
            j=`expr $j + 1`
        done
        echo -e
        i=`expr $i - 1`
    done
else
    echo "You entered : "$l
    echo "Only A-Z or a-z accepted"
fi