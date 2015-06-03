class AuthorsController < ApplicationController 

  def index
    @author = Author.all
  end

	def new
    @author = Author.new
    
	end

	def create

	end

	def update

	end

	def destroy

	end



end