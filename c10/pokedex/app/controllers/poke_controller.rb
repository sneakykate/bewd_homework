
class PokeController < ApplicationController

	def links

		pokemonlist = HTTParty.get('http://pokeapi.co/api/v1/pokedex/1/').parsed_response
		@pokecharacters = pokemonlist['pokemon']
	end
		
end