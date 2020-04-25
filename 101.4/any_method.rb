p [1, 2, 3].any? do |num|
  num > 2
end

{ a: "ant", b: "bear", c: "cat" }.any? do |key, value|
  p value.size > 1
end

  