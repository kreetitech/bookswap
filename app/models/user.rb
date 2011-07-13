class User < ActiveRecord::Base
  acts_as_authentic
  validates :login, :uniqueness => true
  validates :email, :uniqueness => true

  has_many :books
  has_many :inventries
  has_many :wishlists
end
