class BooksController < ApplicationController
  def index
   @books = current_user.books
  end
   def show
     @books = current_user.books
    end
  def new
    @books = Book.new
  end

  def create
    @user =current_user # replace with current user
    @user.books.create(params[:book])
    #@books = Book.new(params[:book])
    #if @books.save!
      #redirect_to @book
   # end
  end

  def update
  end

  def destroy
  @book = Book.find(params[:id])
  @book.destroy
  redirect_to @book
  end
 def browse
@books=Book.where("user_id != #{current_user.id}")
 end
end
