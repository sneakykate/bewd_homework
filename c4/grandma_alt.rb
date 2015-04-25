puts 'HUH?'

loop do 
	print '> '
	response = gets.chomp
	if response == 'BYE'
		break
	elsif response != repsonse.upcase
		puts 'HUH?! SPEAK UP, SONNY!'
	else
		year = rand(1930..1950)
		puts "NO, NOT SINCE #{year}"
	end
	
end

