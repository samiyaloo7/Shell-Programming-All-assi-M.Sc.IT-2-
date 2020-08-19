 echo "Please choose one of the following options"
	   echo "Press 1 for a Matrix Addition"
           echo "Press 2 for a Matrix Subtraction"
           echo "Press 3 for a Matrix Transposition"
           echo "Press 4 for a Matrix Multiplication"
           echo "Press 5 to exit"
	   	while :
	   	do
				echo "Chosen Number: "	
				read number
				case $number in
				1)
					 echo "Please enter your values separated by a space"
				   	 read -a arr1
				  	 echo "Array 1 complete"
				  	 echo "Enter row and coloumn"
				  	 read row1
				  	 read col1
				  	 echo "Please enter your values separated by a space"
				  	 read -a arr2	
				 	 echo "Array 2 complete"
				 	 echo "Enter row and coloumn"
				  	 read row2
				   	 read col2
					 
					 for((x=0; x<row1; x++))
					 do
  						for((y=0; y<col1; y++))
  						do
   						     i=$((x*col1+y))
  						done
					done

					for((x=0; x<row2; x++))
					do
					  for((y=0; y<col2; y++))
					  do
					    i=$((x*col2+y))
					  done
					done
			
					matrix3=()
					for((x=0; x<row1; x++))
					do
					  for((y=0; y<col2; y++))
					  do
					    i=$((x*col2+y))
					    matrix3[k]=$((${arr1[i]} + ${arr2[i]}))
					    k=$((k+1))
					  done
					done
					echo "Addition of two matrix"
					for((x=0; x<row1; x++))
					do
					  for((y=0; y<col2; y++))
					  do
					    i=$((x*col2+y))
					    echo -n "${matrix3[i]} "
					  done
					  echo
					done
					unset matrix3
					;;
				2)       
					 echo "Please enter your values separated by a space"
				   	 read -a arr1
				  	 echo "Array 1 complete"
				  	 echo "Enter row and coloumn"
				  	 read row1
				  	 read col1
				  	 echo "Please enter your values separated by a space"
				  	 read -a arr2	
				 	 echo "Array 2 complete"
				 	 echo "Enter row and coloumn"
				  	 read row2
				   	 read col2
					 
					 for((x=0; x<row1; x++))
					 do
  						for((y=0; y<col1; y++))
  						do
   						     i=$((x*col1+y))
  						done
					done

					for((x=0; x<row2; x++))
					do
					  for((y=0; y<col2; y++))
					  do
					    i=$((x*col2+y))
					  done
					done
			
					matrix3=()
					for((x=0; x<row1; x++))
					do
					  for((y=0; y<col2; y++))
					  do
					    i=$((x*col2+y))
					    matrix3[k]=$((${arr1[i]} - ${arr2[i]}))
					    k=$((k+1))
					  done
					done
					echo "Subtraction of two matrix"
					for((x=0; x<row1; x++))
					do
					  for((y=0; y<col2; y++))
					  do
					    i=$((x*col2+y))
					    echo -n "${matrix3[i]} "
					  done
					  echo
					done
					unset matrix3
					;;					
				3)
	
					echo "Please enter your values separated by a space"
				   	 read -a arr1
				  	 echo "Array 1 complete"
				  	 echo "Enter row and coloumn"
				  	 read row1
				  	 read col1
				  	 echo "Please enter your values separated by a space"
				  	 read -a arr2	
				 	 echo "Array 2 complete"
				 	 echo "Enter row and coloumn"
				  	 read row2
				   	 read col2
					for((x=0; x<row1; x++))
					do
					  for((y=0; y<col1; y++))
					  do
					    i=$((x*col1+y))
					    echo -n "${arr1[i]} "
					  done
					  echo
					done
					 
					for((x=0; x<row1; x++))
					do
					  for((y=x+1; y<col1; y++))
					  do
					    i1=$((row1*x + y))
					    i2=$((row1*y + x))
					    temp=${arr1[i1]}
					    arr1[i1]=${arr1[i2]}
					    arr1[i2]=$temp
					  done
					done
					 
					echo "Transpose of a matrix"
					for((x=0; x<row1; x++))
					do
					  for((y=0; y<col1; y++))
					  do
					    i=$((x*col1+y))
					    echo -n "${arr1[i]} "
					  done
					  echo
					done
					unset matrix3					
					;;
				4)
      
					echo "Please enter your values separated by a space"
				   	 read -a arr1
				  	 echo "Array 1 complete"
				  	 echo "Enter row and coloumn"
				  	 read row1
				  	 read col1
				  	 echo "Please enter your values separated by a space"
				  	 read -a arr2	
				 	 echo "Array 2 complete"
				 	 echo "Enter row and coloumn"
				  	 read row2
				   	 read col2
					 
					 for((x=0; x<row1; x++))
					 do
  						for((y=0; y<col1; y++))
  						do
   						     i=$((x*col1+y))
  						done
					done

					for((x=0; x<row2; x++))
					do
					  for((y=0; y<col2; y++))
					  do
					    i=$((x*col2+y))
					  done
					done
					
					matrix3=()
					indx3=$0
					for((x=0; x<row1; x++))
					do
					  for((y=0; y<col2; y++))
					  do
					    matrix3=()	
					    for((z=0; z<row1; z++))
					    do
					    	indx1=$((x*$row1+z))
				            indx2=$((z*$col2+y))
					        result=$((result+${arr1[indx1]} * ${arr2[indx2]}))
					    done
					    indx3=$((x*$col2+y))
					    matrix3[indx3]=$result
					  done
					done
					echo "Multiplication of two matrix"
					for((x=0; x<row1; x++))
					do
					  for((y=0; y<col2; y++))
					  do
					    i=$((x*col2+y))
					    echo -n "${matrix3[i]} "
					  done
					  echo
					done
					unset matrix3
					;;
				5)
					echo "Goodbye"
					break
					;;
				*)
					echo "Wrong input"
					;;
				esac
				done
				echo
				echo "Done"
				;;
	
done
echo
echo "Thank you"