# booklist peter version

require 'httparty'

bookslistget = HTTParty.get('http://api.usatoday.com/open/bestsellers/books/ThisWeek?count=20&class=Fiction&api_key=xg3mr2y632z2544e2ucpa42w')

parsed = bookslistget.parsed_response

recent_books = parsed['BookLists'][0]['BookListEntries']

recent_books.each_with_index do |book, i|
	#grab each element within the array recent_books, and do the below, also grab its index and call it i
	puts "#{i+1}. #{book['Title']} by #{book['Author']}"
	description = book['BriefDescription']
	if description.empty?
		puts "This is a good book!"
	else
		puts "#{description}"
	end
end


