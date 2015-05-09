class GarageioController < ApplicationController
	def home
	@cars = Car.all
	end
end