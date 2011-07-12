class WishlistsController < ApplicationController
  def index
     @wishlists=Wishlist.all
  end

  def create
     @user =User.first 
    @user.books.wishlists.create(params[:wishlist])
  end

  def show
 @title = @books.title
  end
  
  def destroy
  end

end
