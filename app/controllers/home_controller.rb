class HomeController < ApplicationController
  skip_before_filter :require_user

  def index
    @books = Book.all(:limit => 3, :conditions => ["photo_file_name is not NULL"], :order => "created_at desc")
    @users = User.all(:limit => 10, :conditions => ["photo_file_name is not NULL"], :order => "created_at desc")
  end

end
