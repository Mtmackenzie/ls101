# Write a method that counts the number of occurrences of each element in a 
# given array.

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

# count_occurrences(vehicles)
# The words in the array are case-sensitive: 'suv' != 'SUV'. ` Once counted, 
# print each element alongside the number of occurrences.

# Expected output:

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

# input: array, output: interpolated string with element and number of instances
# case-sensitive
# create counter hash,
# count instance of element in array, put info into hash, return key/value
# as interpolated string

dogs = [ "Bruno", "Bruno", "wanda"]

def count_occurrences(arr)
  element_count = Hash.new
  arr.uniq.each do |x|
    y = arr.count(x)
    element_count = {x => y}
    element_count.each do |key, value|
      puts "#{key} => #{value}"
    end
  end
end


# def count_occurrences(array)
#   occurrences = {}

#   array.each do |element|
#     occurrences[element] = array.count(element)
#   end
#   puts occurrences
#   occurrences.each do |element, count|
#     puts "#{element} => #{count}"
#   end
# end

count_occurrences(vehicles)
count_occurrences(dogs)