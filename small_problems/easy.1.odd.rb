def is_odd?(integer)
  if integer % 2 == 0
    false
  else
    true
  end
end

p is_odd?(1)

def is_odd?(integer)
  integer % 2 == 1 || integer % 2 == -1
end

p is_odd?(1)