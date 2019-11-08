class MatrixCalculator

# The method checks to see that the multiplication is possible by matricy rules. we must have the same amount of 
# columns in the 2nd matrix as rows in the first.
# we can transpose the second matrix if it has the same amount of rows which will rotate it giving it the same
# amount of columns as rows in the first if this is what we need to do to make it work.

def rows_to_columns?(matrix_1, matrix_2)

    if matrix_1[0].length == matrix_2.length
      return new_arr = matrix_2
    end
  
    new_arr = []
  
    if matrix_1[0].length == matrix_2[0].length
      temp_arr = []
      element = 0  
  
      while element != matrix_1[0].length  
        matrix_2.each do |arr|
          temp_arr << arr[element]
        end    
        new_arr << temp_arr
        temp_arr = []
        element += 1
      end
  
     return new_arr
  
    # The check has returned false. The multiplication is not pheasable 
    else
      puts "Sorry These matrices are not naturally divisible even if transposed" 
    end 
  
  end 
  
  # Multiplying each row element in matrix one by each column element in matrix 2
  def multiplication(matrix_1, matrix_2)
  
    matrix_one_array = 0
    matrix_two_array = 0
    element = 0
    new_array = []
    
    until matrix_one_array == matrix_1.length
    
      temp_arr = []
    
      until element == matrix_2[0].length
    
        matrix_1[matrix_one_array].each do |var|
         temp_arr << var * matrix_2[matrix_two_array][element]
          matrix_two_array += 1
        end
    
        matrix_two_array = 0
        element += 1
    
        new_array << temp_arr
        temp_arr = []
  
      end
    
      element = 0
      matrix_one_array += 1
    
    end
  
    return new_array
  
  end
  
  # As each column has been added to its own array we get the sum of eachn array 
  def reduction(new_array)
    arr = []
    new_array.each do |x|
       arr << x.reduce(:+)
    end
    return arr
  end
  
  # Now to organise the total sum of the columns into the appropriate rows in the new matrix
  def arrange(reduced_array, matrix_2, matrix_1)
    result_matrix = []
    element = matrix_2[0].length
    until result_matrix.length == matrix_1.length
      result_matrix << reduced_array.take(element)
    end
    return result_matrix
  end
end