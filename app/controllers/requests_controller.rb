class RequestsController < ApplicationController
  def create
    @receiver = User.find(params[:receiver_id])
    UserMailer.request_book(current_user, @receiver, params[:message], params[:contact_no]).deliver
    flash[:notice] = "Successfully sent request to #{@receiver.name}."
    redirect_to wishlists_path
  end

  def new
  end

end
