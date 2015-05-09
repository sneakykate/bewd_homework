class BrewyodaController < ApplicationController

		def home
		#home page
		require 'httparty'
		require 'unirest'

		#get style description
		url = 'http://api.brewerydb.com/v2/menu/styles?key=71963fe4784b57a86a2bd862170efd56' #go get the beer styles page of the brewerydb api

		breweries_response = HTTParty.get(url)

		parsed = breweries_response.parsed_response 

		breweries = parsed ['data'] #retrieves all the beer styles

		beer = breweries[rand(0..169)] #retrieves a random beer style out of the list

		@beerstyle = beer['name'] #retrieves the name of the beer style

		description = beer['description']

		@description = beer['description']

		first_sentence = description.split('.').first #breaks off first sentence of the description

		first_to_yoda = first_sentence.split.join('+') #makes the first sentence of the description into a query for yoda

		# These code snippets use an open-source library. http://unirest.io/ruby
		@response = Unirest.get "https://yoda.p.mashape.com/yoda?sentence=#{first_to_yoda}",
		  headers:{
		    "X-Mashape-Key" => "HA6bg6zXzymshi37lng7HpRHRbAfp1E7BnOjsn2AxcANR3swNg",
		    "Accept" => "text/plain"
		  }

		end

	def cartoon
		require 'httparty'

		cartoon_number = rand(0..500)

		cartoon_url = "http://xkcd.com/#{cartoon_number}/info.0.json"

		cartoon_response = HTTParty.get(cartoon_url)

		parsed_cartoon = cartoon_response.parsed_response

		@cartoonlink = parsed_cartoon['img']
		puts @cartoonlink

	end
	def anotherone
	end
end