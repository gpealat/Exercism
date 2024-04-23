def steps(number:int)->int:
    """ Function that implements the Collatz conjecture algorithm

    :params number - int: integer number to test
    :return int: the number of steps of the algorithm
    """
    try:
        # Checking the integers below or equal 0
        if (number<=0):
            raise Exception

        # Storing the step increment starting at 0
        step=0

        #While number is not 1, we continue the loop
        while(number != 1):  
            #We implement the algorithm logic
            if(number%2):
                number=3*number+1
            else:
                number=number/2
            #We increment the step counter
            step=step+1

        #We return the result
        return step
    except Exception as e:
        raise ValueError("Only positive integers are allowed")
