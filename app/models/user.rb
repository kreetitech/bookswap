class User < ActiveRecord::Base
  acts_as_authentic
  validates :login, :uniqueness => true
  validates :email, :uniqueness => true

  has_many :books
  has_many :inventories
  has_many :wishlists

  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }

  def name
    first_name + ' ' + last_name
  end
end
