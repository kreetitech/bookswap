class CreatePhotos < ActiveRecord::Migration
  def self.up
    create_table :photos do |t|
t.integer:photo_id
t.integer:user_id
t.integer:book_id
t.string:file_


      t.timestamps
    end
  end

  def self.down
    drop_table :photos
  end
end
