class ArtistsController < ApplicationController
	def home
	
	end

	def artists
		@songs = Songs.all
	end

	def shuffle

	end
end