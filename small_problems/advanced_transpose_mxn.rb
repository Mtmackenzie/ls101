def transpose(array)
  new_row = []
  result = []
  highest_index = array[0].size - 1
  (0..highest_index).each do |index|
    array.each do |row|
      new_row << row[index]
    end
  result << new_row
  new_row = []
  end
  result
end

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) == [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]
