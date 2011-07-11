class InventoriesController < ApplicationController
  def index
    @inventories=Inventory.all
  end
  def new
    @inventory = Inventory.new
  end
  def create
    @user = User.first
    @book =Book.first # replace with current book
   @user.inventory.create(params[:inventory])

   @inventory = Inventory.new(params[:inventory])
     if @inventory.save!
       redirect_to :action => "show", :id => 4
     #else
       #@title = "Sign up"
       #render 'new'
     end

  end

  def show

  end
  def destroy
  end

end


