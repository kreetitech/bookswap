class InventriesController < ApplicationController
  def index
    @inventries=Inventry.all
  end
  def new
   @user =User.first 
   @use.books.inventries.create(params[:inventry])
    end

  def show
 @title = @books.title
  end
  def destroy
  end

end
