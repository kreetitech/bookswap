class BooksController < ApplicationController
  def index
    @books = if params[:mybooks].present?
               current_user.books.paginate(:page => params[:page], :per_page => 10)
             else
               Book.paginate(:page => params[:page], :per_page => 10)
             end
  end

  def show
    @books = current_user.books
  end

  def new
    @books = Book.new
  end

  def create
    current_user.books.create(params[:book])
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
  def edit
    @book =Book.find(params[:id])
  end

  def search
    @books = [] #write the search logic
    render :action => "index"
  end
end
