class CreateBooks < ActiveRecord::Migration
  def self.up
    create_table :books do |t|
      t.integer:user_id,	:null=>false
      t.string:title,	:null=>false
      t.string:author,	:null=>false
      t.string:description
      t.string:condition
      t.string:isbn
      t.string:language,	:null=>false
      t.integer:book_category,	:null=>false

      t.timestamps
    end
  end

  def self.down
    drop_table :books
  end
end
