#  Accept the input of 2 matrixes
matrix_1 = [1,2,3,4]
matrix_2 = [
    [1,2,3,4],
    [1,2,3,4],
    [1,2,3,4]
]

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
  
      p new_arr  
    end

  else
    puts "Sorry These matrices are not naturally divisible even if transposed" 
  end 

end 

rows_to_columns?(matrix_1, matrix_2)


# proceed with the code to multiply them together
#return the results

