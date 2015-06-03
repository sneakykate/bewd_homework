class DogtrackerController < ActionController::Base

	def home
		@dogs = Dog.all
		@dog = Dog.new
	end
	
	def new
		@dog = Dog.new
	end

	def show
		@dog = Dog.find(params['id'])
		
	end

	def create 
		@dog = Dog.new(dog_params)
		if @dog.save
			redirect_to '/'
		else
			@errors = @dog.errors.full_messages
			render :new

		end
	end

private
	def dog_params
		params.require(:dog).permit(:name, :breed, :age, :img_url)
	end


end