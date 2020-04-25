# Let's call a method, and pass both a string and an array as parameters and 
# see how even though they are treated in the same way by Ruby, the results can be different.

# Study the following code and state what will be displayed...and why:

def tricky_method(a_string_param, an_array_param)
  a_string_param << "rutabaga"
  puts "a_string_param id is: #{a_string_param.object_id}"
  n = a_string_param + "rutabaga"
  puts "n id is #{n.object_id}"
  a_string_param = n
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
puts "my_string id is #{my_string.object_id}"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "my_string id is now #{my_string.object_id}"
puts "My array looks like this now: #{my_array}"