class UsersController < ApplicationController
  skip_before_filter :require_user, :only => [:new, :create]

  def index
    @user=User.all
  end

  def new
    @user = User.new
    @title = "Sign up"
  end

  def create
    @users = User.new(params[:user])
    if @users.save!
      redirect_to @books
    else
      @title = "Sign up"
      render 'new'
    end
  end

  def show
    @user = current_user

  end
 
end
