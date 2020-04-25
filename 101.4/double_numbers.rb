# def double_numbers(numbers)
#   doubled_numbers = []
#   counter = 0

#   loop do
#     break if counter == numbers.size

#     current_number = numbers[counter]
#     doubled_numbers << current_number * 2

#     counter += 1
#   end

#   doubled_numbers
# end

# def double_numbers(numbers)
#   doubled_numbers = []
#   counter = 0
  
#   loop do
#     break if counter == numbers.size
    
#     current_number = numbers[counter]
#     doubled_numbers << current_number * 2
    
#     counter += 1
#   end
  
#   doubled_numbers
# end

# def double_numbers(numbers)
#   doubled_numbers = [] 
#   counter = 0
  
#   loop do
#     break if counter == numbers.size
    
#     current_number = numbers[counter]
#     doubled_numbers << current_number * 2
    
#     counter += 1
#   end
  
#   doubled_numbers
# end

def double_odd_numbers(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

  current_number = numbers[counter]
  current_number *= 2 if current_number.odd?
  doubled_numbers << current_number
  

    counter += 1
  end

  doubled_numbers
end
  
my_numbers = [1, 4, 3, 7, 2, 6]
p double_odd_numbers(my_numbers)

def multiply(array, integer)
  multiplied_numbers = []
  counter = 0
  
  loop do
    break if counter == array.size
    
  current_number = array[counter]
  current_number *= integer
  multiplied_numbers << current_number
  
  counter += 1
  end
  
  multiplied_numbers
end



my_number_array = [1, 4, 3, 7, 2, 6]
p multiply(my_number_array, 5)