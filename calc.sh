#! /usr/bin/env bash

# Ensure to keep prompting user
while true; do

	# When the program is first loaded, display a greeting to the user.
	echo -e "\nBeloved, you are welcome to use our simple calculator program.\r\nPlease input the corresponding digits for your choice.\r\ne.g. Enter 1 for Basic, 2 for Date, 3 for Currency...\n"

	# Directives
	directive1="\nPlease provide the first number:\n"
	directive2="Please provide the second number:\n"


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

			echo -e $directive1
			read dir1
			echo -e $directive2
			read dir2

			echo -e "Enter Choice: \n"
			echo "1. Addition (+)"
			echo "2. Subtraction (-)"
			echo "3. Multiplication (*)"
			echo "4. Division (/)"
			echo "5. Square (x**2)"
			echo "6. Modulus (mod)"
			echo "7. Power of 10 (10^x)"

			read input2

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

			esac

		;;

	esac

	#case $input in 
		# If the selection matches a supported operation, execute the operation.
	# If the selection does not match a support operation, display an error message.


# When the operation is complete, redisplay the menu.
done