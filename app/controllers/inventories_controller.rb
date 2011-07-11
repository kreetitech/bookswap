class InventoriesController < ApplicationController
  def index
    @inventories=current_user.inventories
  end
  
  def show
   @inventories=current_user.inventories
  end
  def destroy
  end

 def create
   current_user.inventories.create(params[:book_id])
   redirect_to books_path
 end
end
