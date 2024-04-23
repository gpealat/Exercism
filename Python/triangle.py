from typing import List

def check_positive(sides:List[float])->bool:
    """
    Function that check that all sides are positive

    params: sides List[float] - list of the sides length
    returns bool: True if they are positive
    """
    if min(sides) <=0:
        return False

    return True

def check_triangle(sides:List[float])->bool:
    """
    Function that check that the sides list is a triangle

    params: sides List[float] - list of the sides length
    returns bool: True if it is a triangle
    """
    if sides[0] + sides[1] < sides[2]:
        return False

    if sides[1] + sides[2] < sides[0]:
        return False

    if sides[0] + sides[2] < sides[1]:
        return False

    return True
    
def equilateral(sides:List[float])->bool:
    """
    Function that check that the triangle is equialateral

    params: sides List[float] - list of the sides length
    returns bool: True if they are positive
    """
    if not check_positive(sides):
        return False

    if not check_triangle(sides):
        return False
    # we need to check only 2 equality 
    return (sides[0] == sides[1]) and (sides[0]==sides[2])


def isosceles(sides:List[float])->bool:
    """
    Function that check that the triangle is isocel

    params: sides List[float] - list of the sides length
    returns bool: True if they are positive
    """
    if not check_positive(sides):
        return False

    if not check_triangle(sides):
        return False
    
    return (sides[0] == sides[1]) or (sides[0]==sides[2]) or (sides[1]==sides[2])

    return True


def scalene(sides:List[float])->bool:
    """
    Function that check that the triangle is scalene

    params: sides List[float] - list of the sides length
    returns bool: True if they are positive
    """
    if not check_positive(sides):
        return False

    if not check_triangle(sides):
        return False

    # If the triangle is either equilateral or isocel it is not scalene
    if equilateral(sides) or isosceles(sides):
        return False
        
    return True
