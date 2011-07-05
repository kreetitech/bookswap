class BooksController < ApplicationController
  def index
   @book = Book.all
  end
   def show
    @book = Book.find(params[:id])
     @title = @book.title
  def new
    @book = Book.new
  end

  def create
    @user =User.first # replace with current user
    @user.books.create(params[:book])
  end

  def update
  end

  def destroy
  end

end
