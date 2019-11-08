require_relative "matrix_methods.rb"

# Input 2 Matrices
matrix_1 = [
  [1,2,3,4],
  [1,2,3,4]
]

matrix_2 = [
    [1,2,3,4],
    [1,2,3,4],
    [1,2,3,4]
]

# Creating an instance of the Matrix calculator
matrix_calculator = MatrixCalculator.new

# calling the above methods to make the app work 
matrix_2 = matrix_calculator.rows_to_columns?(matrix_1, matrix_2)
new_array = matrix_calculator.multiplication(matrix_1, matrix_2)
reduced_array = matrix_calculator.reduction(new_array)
result_matrix = matrix_calculator.arrange(reduced_array, matrix_2, matrix_1)

# make it look like a matrix
result_matrix.each do |x|
  p x
end



