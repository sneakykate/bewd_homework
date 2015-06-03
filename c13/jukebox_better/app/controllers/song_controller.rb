class SongController < ApplicationController
	def home
	
	end

	def artists
		@songs = Song.all
	end

	def shuffle
		@songs = Song.all.shuffle
	end
end