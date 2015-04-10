puts "Say something to grandma."

something = gets.chomp

randomyear = rand(1930..1950)

while something != something.upcase
	puts "HUH?! SPEAK UP, SONNY!"
	something = gets.chomp

	while something == something.upcase && something != "BYE"
		puts "NO, NOT SINCE #{randomyear}"
		something = gets.chomp
		randomyear = rand(1930..1950)
	end


end

if something == "BYE"
	puts "Bye-bye, dear."
end