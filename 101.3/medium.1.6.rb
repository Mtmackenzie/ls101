# def string_method(a_string_param)
#   a_string_param += "rutabaga"
# end

# def array_method(an_array_param)
#   an_array_param << "rutabaga"
# end

# my_string = "pumpkins"
# my_array = ["pumpkins"]

# string_method(my_string)
# array_method(my_array)

# puts "My string looks like this now: #{my_string}"
# puts "My array looks like this now: #{my_array}"

def not_so_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = not_so_tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"