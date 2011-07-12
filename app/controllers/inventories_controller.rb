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
   current_user.inventories.create(:book_id => params[:book_id])
   redirect_to books_path
 end
end
