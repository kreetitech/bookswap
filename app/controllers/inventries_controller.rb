class InventriesController < ApplicationController
  def index
    @inventries=current_user.inventries
  end
  
  def show
   @inventries=current_user.inventries
  end
  def destroy
  end

 def create
   current_user.inventries.create(params[:book_id])
   redirect_to books_path
 end
end
