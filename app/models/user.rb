class User < ActiveRecord::Base
  acts_as_authentic
  validates :display_name, :uniqueness => true
  validates :email, :uniqueness => true
end
