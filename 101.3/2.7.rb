flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

p flintstones << ["Dino", "Hoppy"]

p flintstones.flatten!

p flintstones.push("Rover").push("Mouse")

p flintstones.concat(%w(Sparky Fish))