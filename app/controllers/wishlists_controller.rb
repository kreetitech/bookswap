class WishlistsController < ApplicationController
  def index
    @wishlists=current_user.wishlists
  end

  def create
   current_user.inventories.create(:book_id => params[:book_id])
   redirect_to books_path
  end

  def show
 @title = @books.title
  end
  
  def destroy
  end

end
