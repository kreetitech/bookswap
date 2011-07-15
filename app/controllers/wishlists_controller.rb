class WishlistsController < ApplicationController
  def index
    @wishlists=current_user.wishlists
  end

  def create
   current_user.wishlists.create(:book_id => params[:book_id])
   redirect_to books_path
  end

  def show
    @wishlists=current_user.wishlists
  end

  def destroy
  end

end
