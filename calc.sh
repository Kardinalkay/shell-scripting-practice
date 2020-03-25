#! /usr/bin/env bash

digit_test () {

	if ! [[ $1 =~ $2 ]] ; then
	   echo "error: $1 does not look like digit(s). Please try again." >&2; exit 1
	fi
}

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
			echo "8. Exit"

			read input2

			# If user doesn't exit program, run other options

			if [[ $input2 -ne 8 ]] ; then 

				echo -e $directive1
				read dir1

				digit_test $dir1 $regex_digits

				# If user chooses square or power of 10 options (5 or 7), only one parameter is needed,
				# otherwise 2

				if [ $input2 -ne 5 ] && [ $input2 -ne 7 ]; then 

					echo -e $directive2
					read dir2

					digit_test $dir2 $regex_digits

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

				"8")
					echo "Restart please."
					exit 0
					;;
			esac

		;;

		"2")

			# Collect dates from user one segment at a time: collecting year, month and date
			# This will make the computation easier down the road

			echo -e "\nWe will start with the larger date :).\n"

			echo -e "\nEnter year of larger date please. 'Format: 2020'"
			read date_yr_1
			digit_test $date_yr_1 $regex_digits

			echo -e "\nEnter month of larger date please. 'Format: 10' "
			read date_month_1
			digit_test $date_month_1 $regex_digits

			echo -e "\nEnter day of larger date please. 'Format: 1' "
			read date_day_1
			digit_test $date_day_1 $regex_digits

			echo -e "\nEnter year of lesser date please. 'Format: 2019'"
			read date_yr_2
			digit_test $date_yr_2 $regex_digits

			echo -e "\nEnter month of lesser date please. 'Format: 10' "
			read date_month_2
			digit_test $date_month_2 $regex_digits

			echo -e "\nEnter day of lesser date please. 'Format: 1' "
			read date_day_2
			digit_test $date_day_2 $regex_digits

			let "date_yr_diff = date_yr_1 - date_yr_2"
			let "date_month_diff = date_month_1 - date_month_2"
			let "date_day_diff = date_day_1 - date_day_2"

			# In the event user sets parameters the other way round, ensure result does not come back negative

			if [[ $date_yr_diff -lt 0 ]] ; then 
				((date_yr_diff=-1*date_yr_diff))
			fi

			if [[ $date_month_diff -lt '0' ]] ; then 
				((date_month_diff=-1*date_month_diff))
			fi

			if [[ $date_day_diff -lt '0' ]] ; then 
				((date_day_diff=-1*date_day_diff))
			fi

			#If difference in year is 0, skip altogether
			if [[ $date_yr_diff -eq 0 ]] ; then 
				date_yr_diff=''
			else 
				date_yr_diff="$date_yr_diff year(s)"
			fi

			echo -e "\nThe difference between date1 and date2 is:"

			echo "$date_yr_diff $date_month_diff month(s) $date_day_diff day(s)"

		;;

		"3")

			echo -e "\nConvert From What Currency:\n"
			echo "1. Naira"
			echo "2. US Dollar (USD)"
			echo "3. Canadian Dollar (CAD)"
			echo "4. Birr"
			echo "5. Yuan"
			echo "6. UK Pound"
			echo "7. Exit"

			read input

			echo -e "\nConvert To What Currency:\n"
			echo "1. Naira"
			echo "2. US Dollar (USD)"
			echo "3. Canadian Dollar (CAD)"
			echo "4. Birr"
			echo "5. Yuan"
			echo "6. UK Pound"
			echo "7. Exit"

			read input2



		;;

	esac

	#case $input in 
		# If the selection matches a supported operation, execute the operation.
	# If the selection does not match a support operation, display an error message.


# When the operation is complete, redisplay the menu.
done