difference_of_squares <- function(natural_number) {

  # Initialize the variables for the sums
  sum_squares = 0
  square_sum = 0

  # Looping for each number
  for(i in (1:natural_number)){
    sum_squares=sum_squares+i^2
    square_sum=square_sum+i
  }
  # Calculating the difference
  square_sum^2-sum_squares
}
