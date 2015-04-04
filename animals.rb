puts "Enter an animal that makes a sound."

animal = gets.chomp.downcase.strip

puts "What sound does it make?"

sound = gets.chomp.downcase.strip

puts "How many times should the animal make the noise?"

times = gets.chomp.to_i

puts "The " + animal + " goes " + (sound + " ")*times 

# it's preferable to 'sanitize' the variable when it's given to you (during gets)
#gsub method to remove middle spaces?