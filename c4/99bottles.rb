bottle_num = 99

while bottle_num > 1
	puts "#{bottle_num} bottles of beer on the wall, #{bottle_num} bottles of beer."
	bottle_num -= 1
	if bottle_num > 1
		puts "Take one down, pass it around, #{bottle_num} bottles of beer on the wall"
	elsif bottle_num == 1
		puts "Take one down, pass it around, #{bottle_num} bottle of beer on the wall"
		puts "1 bottle of beer on the wall, 1 bottle of beer."
		puts "Take one down and pass it around, no more bottles of beer on the wall."
		puts "No more bottles of beer on the wall, no more bottles of beer."
		puts "Go to the store and buy some more, 99 bottles of beer on the wall."
		puts
		puts "Are you tired of this song?"
		tired = gets.chomp.downcase
		if tired != 'yes'
			puts "Sing it again!"
			bottle_num = 99
		else puts "Me too, now I need a beer."
		end
	end
end

