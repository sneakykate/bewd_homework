class PikabrewController < ApplicationController

		def home
		#home page
		require 'httparty'

		#get style description
		url = 'http://api.brewerydb.com/v2/menu/styles?key=71963fe4784b57a86a2bd862170efd56' #go get the beer styles page of the brewerydb api

		breweries_response = HTTParty.get(url)

		parsed = breweries_response.parsed_response 

		breweries = parsed ['data'] #retrieves all the beer styles

		beer = breweries[rand(0..169)] #retrieves a random beer style out of the list

		@beerstyle = beer['name'] #retrieves the name of the beer style

		@description = beer['description']
		
		pokeid = rand(1..200)

		pokeurl = "http://pokeapi.co/api/v1/pokemon/#{pokeid}"

		poke_response = HTTParty.get(pokeurl)

		parsedpoke = poke_response.parsed_response

		@pokename = parsedpoke['name']

		@pokeimg = parsedpoke['']



		end

		def moredeets

		end

end