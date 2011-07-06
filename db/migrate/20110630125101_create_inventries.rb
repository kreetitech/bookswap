class CreateInventries < ActiveRecord::Migration
  def self.up
    create_table :inventries do |t|
      t.integer:user_id
      t.integer:book_id
      t.timestamps
    end
    add_foreign_key :inventries, :user_id, :users, :id
    add_foreign_key :inventries, :book_id, :books, :id
  end

  def self.down
    drop_table :inventries
  end
end
