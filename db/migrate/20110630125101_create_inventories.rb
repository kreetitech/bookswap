class CreateInventories < ActiveRecord::Migration
  def self.up
    create_table :inventories do |t|
      t.integer:user_id
      t.integer:book_id
      t.timestamps
    end
    add_foreign_key :inventories, :user_id, :users, :id
    add_foreign_key :inventories, :book_id, :books, :id
  end

  def self.down
    drop_table :inventories
  end
end
