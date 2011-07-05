class BooksController < ApplicationController
  def index
   @books = Book.all
  end
   def show
    @books = Book.find(params[:id])
     @title = @books.title
    end
  def new
    @books = Book.new
  end

  def create
    @user =User.first # replace with current user
    @user.books.create(params[:book])
    #@books = Book.new(params[:book])
    #if @books.save!
      #redirect_to @books
    #end
  end

  def update
  end

  def destroy
  end

end
