vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(array)
  array.uniq.each do |x|
    y = array.count(x)
    puts "#{x} => #{y}"
  end
end


count_occurrences(vehicles)

# The words in the array are case-sensitive: 'suv' != 'SUV'. ` 
# Once counted, print each element alongside the number of occurrences.

# Expected output:

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2