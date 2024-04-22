#!/usr/bin/env bash
num_arguments="$#"
# Create a function to print the error message
error_exit()
{
    echo "Usage: $1"
    # We use the general error code 1
    # Other error codes can be found at https://tldp.org/LDP/abs/html/exitcodes.html
    exit 1
}
if [[ "$num_arguments" -eq 1 ]]; then
    # We have only 1 argument so we print the greetings
    echo "Hello, $1"
    exit 0
else
    # Calling the error function with the message to display
    error_exit "error_handling.sh <person>"
fi
