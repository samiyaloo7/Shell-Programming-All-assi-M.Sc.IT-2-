echo "Enter number 1"
read a
echo "Enter number 2"
read b	
echo "1 for Addition"
echo "2 for Subtraction"
echo "3 for Multiplication"
echo "4 for Division"
echo "5 for Modules"
echo "Enter your choice"
read c
case $c in
        1)
                echo $a + $b |bc
                ;;
        2)
                echo $a - $b |bc
                ;;
        3)
                echo $a * $b |bc
                ;;
        4)
                echo $a / $b |bc
                ;;

        5)
                echo $a % $b |bc
                ;;
        *)
                echo "Enter valid number"
esac
