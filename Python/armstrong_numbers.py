def is_armstrong_number(number:int)->bool:
    """Function that checks if a number is an Armstrong number

    :params number int - Number to check

    returns bool
    True if the number is an Armstrong number, false otherwise
    """

    # Check that 0 if an Armstrong number
    if (number==0):
        return True

    # Convert the number into a list of string
    armstrong=list(str(number))

    # Initialize the result variable where we will store the calculation
    result = 0

    # Enumerating all value/index pairs
    for index, value in enumerate(armstrong):
        # Incrementing result with the calculation
        result += int(value)**len(armstrong)

    # Return true if the result = the initial number
    return (result == number)
