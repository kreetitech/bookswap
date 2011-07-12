class CreateWishlists < ActiveRecord::Migration
  def self.up
    create_table :wishlists do |t|
      t.integer:user_id, :null => false
      t.integer:book_id, :null => false
      t.timestamps
    end
    add_foreign_key :wishlists, :user_id, :users, :id
    add_foreign_key :wishlists, :book_id, :books, :id
  end

  def self.down
    drop_table :wishlists
  end
end
