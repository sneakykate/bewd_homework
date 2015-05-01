class ZenController < ApplicationController

	def lorem

		@quote = HTTParty.get('https://api.github.com/zen').parsed_response

	end
		
end