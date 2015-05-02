class CheckpassController < ApplicationController

	def login
		@pass = params['secretcode']
		if @pass != "fluffy" 
			redirect_to "/nope"		
		end
	end	
end