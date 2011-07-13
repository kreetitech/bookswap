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
    @book =Book.find(params[:id])
    @book.update_attributes!(params[:book])
    redirect_to books_path
  end

  def destroy
  @book = Book.find(params[:id])
  @book.destroy
  redirect_to @book
  end
 def browse
@books=Book.where("user_id != #{current_user.id}")
 end
def edit
 @book =Book.find(params[:id])
end
end
