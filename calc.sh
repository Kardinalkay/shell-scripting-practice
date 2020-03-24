#! /usr/bin/env bash

# When the program is first loaded, display a greeting to the user.
echo -e "Beloved, you are welcome to use our simple calculator program \r\n"

# Ensure to keep prompting user
while true; do

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

	# echo "Enter Choice:"
	# echo "1. Addition (+)"
	# echo "2. Subtraction (-)"
	# echo "3. Multiplication (*)"
	# echo "4. Division (/)"
	# echo "5. Square (x**2)"
	# echo "6. Modulus (mod)"
	# echo "7. Power of 10 (10^x)"


	# Then, capture the user selection.

	read input 

	case $input in 

		#If user input is basic

		"Basic")

		;;

	#case $input in 
		# If the selection matches a supported operation, execute the operation.
	# If the selection does not match a support operation, display an error message.


# When the operation is complete, redisplay the menu.
done