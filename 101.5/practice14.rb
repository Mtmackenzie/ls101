# Given this data structure write some code to return an array containing 
# the colors of the fruits and the sizes of the vegetables. The sizes 
# should be uppercase and the colors should be capitalized.

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}
# The return value should look like this:

# [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

new_hsh = hsh.map do |___, quality|
  if quality[:type] == 'fruit'
    quality[:colors].map do |color|
      color.capitalize
    end
    else
      quality[:size].upcase
  end
end

# hsh.map do |_, value|
#   if value[:type] == 'fruit'
#     value[:colors].map do |color|
#       color.capitalize
#     end
#   elsif value[:type] == 'vegetable'
#     value[:size].upcase
#   end
# end
    # if quality[type] == 'fruit'
    #   colors.capitalize
    # end

# people.sort_by do |name, age|
#   name.capitalize
# end

p new_hsh