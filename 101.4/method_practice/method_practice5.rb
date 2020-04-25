flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# Find the index of the first name that starts with "Be"

# flintstones.any? do |name|
#   name.any? do |letters|
#     letters == "Be"
#   end
# end

counter = 0
selected_name = ''

loop do
  break if counter == flintstones.size
  current_name = flintstones[counter]
  
  if current_name.slice[0, 2] = "Be"
    puts current_name
  else
    puts "no"
  end 
  
  counter += 1
  selected_name
end

puts selected_name
  
# flintstones.each do |name|
#   if name[0, 2] = "Wa"
#     puts "hi"
#   else
#     puts "no"
#   end 
# end 