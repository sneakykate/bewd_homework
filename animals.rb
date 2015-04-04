puts "Enter an animal that makes a sound."

animal = gets.chomp.downcase.strip

puts "What sound does it make?"

sound = gets.chomp.downcase.strip

puts "How many times should the animal make the noise?"

times = gets.chomp.to_i

sound_string = (sound + " ") * times
comma_separated_string = sound_string.strip.gsub(' ', ', ')

puts "The " + animal + " goes " + comma_separated_string

# it's preferable to 'sanitize' the variable when it's given to you (during gets)
#gsub method to remove middle spaces?