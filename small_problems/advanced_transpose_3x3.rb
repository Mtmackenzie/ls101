matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

def transpose(array)
  new_row = []
  result = []
  array.each_with_index do |_, index|
    array.each do |row|
      new_row << row[index]
    end
  result << new_row
  new_row = []
  end
  result
end

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]