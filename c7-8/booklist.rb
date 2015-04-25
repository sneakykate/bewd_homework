require 'httparty'

bookslistget = HTTParty.get('http://api.usatoday.com/open/bestsellers/books/ThisWeek?api_key=xg3mr2y632z2544e2ucpa42w')

parsed = bookslistget.parsed_response

book = 0

puts "The first 20 books on the Best Sellers list this week are:"

20.times do 

	title = parsed['BookLists'][0]['BookListEntries'][book]['Title']
	description = parsed['BookLists'][0]['BookListEntries'][book]['BriefDescription']
	puts title
		if description != nil
			puts  "\"#{description}\""
		end
	book +=1 
end


