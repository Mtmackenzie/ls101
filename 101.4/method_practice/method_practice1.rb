# Given the array below

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# Turn this array into a hash where the names are the keys and the 
# values are the positions in the array.
# input: array, output: returned hash with object index
# each_with_index, provide hash space

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# Find the index of the first name that starts with "Be"
# 
# counter = 0
# selected_name = ''

# loop do
#   break if counter == flintstones.size
#   current_name = flintstones[counter]
  
#   if current_name.start_with?("Be")
#     selected_name = current_name
#     puts flintstones.index(selected_name)
#   end 
  
#   counter += 1
  
# end

p flintstones.index { |name| name[0, 2] == "Be" }