def convert_to_array(ary)
  ary.map! {|name| [name, ary.index(name)]}.to_h
end

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

p convert_to_array(flintstones)