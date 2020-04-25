# Let's now take a look at an example with hashes. In this example we want 
# to select the key-value pairs where the value is 'Fruit'.

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

# def select_fruit(hash)
#   selected_fruit = ''
#   counter = 0
  
#   loop do
#     current_pair = hash[counter]
    
#     if 'Fruit'.has_value?(current_pair)
#       select_fruit << current_pair
#     end
    
#     counter += 1
#     break if counter == hash.size
#   end
  
#   p selected_fruit
# end

# select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}

# def select_fruit(produce_list)
#   produce_keys = produce_list.keys
#   counter = 0
#   selected_fruits = {}

#   loop do
#     # this has to be at the top in case produce_list is empty hash
#     break if counter == produce_keys.size

#     current_key = produce_keys[counter]
#     current_value = produce_list[current_key]

#     if current_value == 'Fruit'
#       selected_fruits[current_key] = current_value
#     end

#     counter += 1
#   end

#   selected_fruits
# end

# def select_fruit(produce_list)
#   produce_keys = produce_list.keys
#   counter = 0
#   selected_fruits = {}
  
#   loop do
    
#     break if counter == produce_list.size
    
#     current_key = produce_keys[counter]
#     current_value = produce_list[current_key]
    
#     if current_value == 'Fruit'
#       selected_fruits[current_key] = current_value
#     end
    
#     counter += 1
#   end
  
#   selected_fruits
# end

# p select_fruit(produce)

def select_fruit(produce_list)
  produce_keys = produce_list.keys
  counter = 0
  selected_fruits = {}
  
  loop do
    break if counter == produce_list.size
    
    current_key = produce_keys[counter]
    current_value = produce_list[current_key]
    
    if current_value == "Fruit"
      selected_fruits[current_key] = current_value
    end
    
    counter += 1
  end
  
  selected_fruits
end

p select_fruit(produce)
  
