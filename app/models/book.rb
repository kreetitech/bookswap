class Book < ActiveRecord::Base
  belongs_to :user
  has_many :inventories
  has_many :wishlists
end
