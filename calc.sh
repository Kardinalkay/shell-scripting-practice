#! /usr/bin/env bash

# When the program is first loaded, display a greeting to the user.
echo "Beloved, you are welcome to use our simple calculator program"

# Ensure to keep prompting user
while true; do

	# Then, display a menu that outlines the possible operations:
	  # Add
	  # Subtract
	  # Exit

	echo "Please make a selection of 0, 1 or 2, wherein they represent 'add', 'subtract', and 'exit' respectively"

	# Then, capture the user selection.

	read input
	# If the selection matches a supported operation, execute the operation.
	# If the selection does not match a support operation, display an error message.


# When the operation is complete, redisplay the menu.
done