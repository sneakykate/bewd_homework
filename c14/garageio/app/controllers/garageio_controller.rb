class GarageioController < ApplicationController
	def home
	@cars = Car.all
	end

	def show
		@car = Car.find(params['id'])		
	end
	
	def new
		@car = Car.new
	end

	def create
		@car = Car.new(car_params) 
		if @car.save
			redirect_to '/'
		else
			render :new 
		end
	end

private
	def car_params
		params.require(:car).permit(:Make, :Model, :Year, :Nickname, :Color)
	end
end