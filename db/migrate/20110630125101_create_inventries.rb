class CreateInventries < ActiveRecord::Migration
  def self.up
    create_table :inventries do |t|
      t.integer:user_id
      t.integer:book_id
      t.timestamps
    end
  end

  def self.down
    drop_table :inventries
  end
end
