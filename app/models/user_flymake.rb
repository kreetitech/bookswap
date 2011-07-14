class User < ActiveRecord::Base
  acts_as_authentic
  validates :login, :uniqueness => true
  validates :email, :uniqueness => true

  has_many :books
  has_many :inventries
  has_many :wishlists

  has_attached_file :photo, :styles => { :thumb => "57x57>" }
end
