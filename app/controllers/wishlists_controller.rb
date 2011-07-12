class WishlistsController < ApplicationController
  def index
    @wishlists=current_user.wishlists
  end

  def create
     @user =User.firstcurrent_user 
    @user.books.wishlists.create(params[:wishlist])
  end

  def show
 @title = @books.title
  end
  
  def destroy
  end

end
