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
    @user = User.new(params[:user])
    if @user.save!
      redirect_to @book
    else
      @title = "Sign up"
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])

  end

end
