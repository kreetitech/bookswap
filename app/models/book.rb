class Book < ActiveRecord::Base
  belongs_to :user
  belongs_to :inventory
  belongs_to :wishlist
end
