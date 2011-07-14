class Book < ActiveRecord::Base
  belongs_to :user
  has_many :inventories
  has_many :wishlists

  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
