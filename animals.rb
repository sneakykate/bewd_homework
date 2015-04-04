puts "Enter an animal that makes a sound."

animal = gets.chomp

puts "What sound does it make?"

sound = gets.chomp

puts "How many times should the animal make the noise?"

times = gets.chomp.to_i

puts "The " + animal.downcase.strip + " goes " + (sound.downcase.strip + " ")*times 