#! /usr/bin/env bash

regex_digits='^[0-9]+$'

# Ensure to keep prompting user
while true; do

	# When the program is first loaded, display a greeting to the user.
	echo -e "\nBeloved, you are welcome to use our simple calculator program.\r\nPlease input the corresponding digits for your choice.\r\ne.g. Enter 1 for Basic, 2 for Date, 3 for Currency...\n"

	# Directives
	directive1="\nPlease provide the first whole number:\n"
	directive2="Please provide the second whole number:\n"


	# Then, display a menu that outlines the possible operations:
	  # Add
	  # Subtract
	  # Multiply
	  # Divide

	echo "Enter Choice:"

	echo "1. Basic"
	echo -e "2. Date \n"

	echo "Converters:"
	echo "3. Currency"
	echo "4. Volume"
	echo "5. Length"
	echo "6. Weight and Mass"
	echo "7. Energy"
	echo "8. Area"
	echo "9. Speed"
	echo "10. Time"
	echo "11. Power"
	echo "12. Data"
	echo "13. Pressure"
	echo "14. Angle"


	# Then, capture the user selection.

	read input 

	case $input in 

		#If user input is basic
		"1")

			echo -e "\nEnter Choice:\n"
			echo "1. Addition (+)"
			echo "2. Subtraction (-)"
			echo "3. Multiplication (*)"
			echo "4. Division (/)"
			echo "5. Square (x**2)"
			echo "6. Modulus (mod)"
			echo "7. Power of 10 (10^x)"

			read input2

			echo -e $directive1
			read dir1

			if ! [[ $dir1 =~ $regex_digits ]] ; then
			   echo "error: $dir1 is not a number" >&2; exit 1
			fi

			if [ $input2 -ne 5 ] && [ $input2 -ne 7 ]; then 

				echo -e $directive2
				read dir2

				if ! [[ $dir2 =~ $regex_digits ]] ; then
				   echo "error: $dir2 is not a number" >&2; exit 1
				fi

			fi

			case $input2 in 

				"1") 
					echo -e "\nThe sum of $dir1 and $dir2 is:"
					expr $dir1 + $dir2
					;;

				"2") 
					echo -e "\nThe subtraction of $dir1 and $dir2 is:"
					expr $dir1 - $dir2
					;;

				"3") 
					echo -e "\nThe multiplication of $dir1 and $dir2 is:"
					expr $dir1 '*' $dir2
					;;

				"4") 
					echo -e "\nThe division of $dir1 and $dir2 is:"
					expr $dir1 / $dir2
					;;

				"5") 
					echo -e "\nThe square of $dir1 is:"
					expr $dir1 '*' $dir1
					;;

				"6") 
					echo -e "\nThe modulus of $dir1 and $dir2:"
					expr $dir1 % $dir2
					;;

				"7") 
					echo -e "\nThe power of 10 raised to power $dir1:"
					number=10
					i=1

					while [[ $i -lt $dir1 ]]; do 
						((number=number*number))
						let "i++"
					done

					echo $number
					;;

			esac

		;;

		"2")

			echo -e "\nEnter greater date without delimiter:\n e.g. 2020/01/01 should be inputted as 20200101"
			read date1

			echo -e "\nEnter lesser date without delimiter:\n e.g. 2019/01/01 should be inputted as 20200101"
			read date2
		;;

	esac

	#case $input in 
		# If the selection matches a supported operation, execute the operation.
	# If the selection does not match a support operation, display an error message.


# When the operation is complete, redisplay the menu.
done