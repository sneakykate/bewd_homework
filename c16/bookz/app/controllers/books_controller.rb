class BooksController < ApplicationController 

  def index 
    @books = Book.all
    @author = Author.all
    @author_name = Author.find(@books.author_id).name
  end

	def new
    @book = Book.new
    @author = Author.all

	end

	def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to '/'
    else
      render :new
    end
  end

	def show
    @book = Book.find(params['id'])
	end

	def update

	end

	def destroy

	end

private
  def book_params
    params.require(:book).permit(:title, :author_id)
  end

end