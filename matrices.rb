#  Accept the input of 2 matrixes

matrix_1 = [1,2,3,4]
matrix_2 = [
    [1,2,3,4],
    [1,2,3,4],
    [1,2,3,4]
]

# The method checks to see that the multiplication is possible by matricy rules. we must have the same amount of 
# columns in the 2nd matrix as rows in the first.
# we can transpose the second matrix if it has the same amount of rows which will rotate it giving it the same
# amount of columns as rows in the first if this is what we need to do to make it work.

def rows_to_columns?(matrix_1, matrix_2)

  return if matrix_1.length == matrix_2.length

  new_arr = []

  if matrix_1.length == matrix_2[0].length
    temp_arr = []
    element = 0  

    while element != matrix_1.length  
      matrix_2.each do |arr|
        temp_arr << arr[element]
      end    
      new_arr << temp_arr
      temp_arr = []
      element += 1
      
      # Printing for testing purposes
      p new_arr[0] 
      p new_arr[1]
      p new_arr[2]
      p new_arr[3]
    end

  # The check has returned false. The multiplication is not pheasable 
  else
    puts "Sorry These matrices are not naturally divisible even if transposed" 
  end 

end 

rows_to_columns?(matrix_1, matrix_2)

# Each element in the first array in matrix one will be multiplied by the first element of each array in the new array
#  may need to set the second array to new array if it returns.

# multiply the second element in the first array in matrix one by the second element in each array in matrix 2

# once full length of the arrays in matrix one are reached move to the second array in matrix one an repeat 
# the process of multiplying the elements in the row or array by the corrosponding element in all arrays in matrix 2
# add the sum of all results of each row together and that becomes the resuilt appended to a new array.

# each time we move down a row in matrix one we move down s row in the result matrix

# the result matrix will hold as many rows as the first matrix which equals the columns of the second matrix !

#  check this logic in canvas before continuing !!

