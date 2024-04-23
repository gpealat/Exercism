def square(number:int)->int:
    """Function that calculates the number of grain on a given square as 2^(n-1)

    params: number int - Square of interest

    returns: int - the number of grains on this square
    """

    # The square number has to be between 1 and 64 to be valid
    if ((number<1) or (number>64)):
        # Raise an exception if this is not the case
        raise ValueError("square must be between 1 and 64")

    return 2**(number-1)

def total()->int:
    """Function that calculates the number of grains on the board

    return int - The number of grains
    """

    # Returns a pythonic sum based on a list comprehension
    return sum([square(n+1) for n in range(64)])
    
