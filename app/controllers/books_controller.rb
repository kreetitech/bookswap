class BooksController < ApplicationController
  def index
  end

  def new
    @book = Book.new
  end

  def create
    @user = User.first # replace with current user
    @user.books.create(params[:book])
  end

  def update
  end

  def destroy
  end

end
