class UsersController < ApplicationController
  skip_before_filter :require_user, :only => [:new, :create]

  def index
    @user = User.all
  end

  def new
    @user = User.new
    @title = "Sign up"
    render :layout => 'home'
  end

  def create
    @user = User.new(params[:user])
    if @user.save!
      UserMailer.welcome_email(@user).deliver
      redirect_to @user
    else
      @title = "Sign up"
      render 'new', :layout => 'home'
    end
  end

  def update
    @user =User.find(params[:id])
    @user.update_attributes!(params[:user])
    redirect_to users_path
  end


  def edit
    @user =User.find(params[:id])
  end
  def show
    @user = current_user
  end

end
