class ZenController < ApplicationController

	def lorem

		@quote = HTTParty.get('https://api.github.com/zen').parsed_response

		encoded_enlightenment = @quote.split.join('+')
		google = 'http://google.com?q='
		@knowledge = google+encoded_enlightenment
		colors = {'Violet', 'Wheat', 'PeachPuff', 'Red'}
		@color = colors.sample

	end
		
end