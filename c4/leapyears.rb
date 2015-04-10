puts "Enter a starting year"

startyear = gets.chomp.to_i

puts "Enter an ending year"

endyear = gets.chomp.to_i



if startyear > endyear 
	puts "Start year must be before end year. What direction does time go in your universe?"
	puts "Enter a new startyear"
	startyear = gets.chomp.to_i
	puts "Enter an ending year"
	endyear = gets.chomp.to_i
end

puts "The leap years between those years are:"

while startyear < endyear 
	
	if startyear % 4 == 0 && startyear % 100 != 0
		puts startyear
		startyear += 1

	elsif startyear % 400 == 0
		puts startyear
		startyear += 1
		

	else startyear += 1

	end
end