class InventriesController < ApplicationController
  def index
    @inventries=Inventry.all
  end
  def new
   @inventries = Inventry.new(params[:inventry])
    if @inventries.save!
      redirect_to @inventries
    else
      @title = "AddToInventry"
     # render 'new'
      render :action => :new
    end
  end

  def show

  end
  def destroy
  end

end
