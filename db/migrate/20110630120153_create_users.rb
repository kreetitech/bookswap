class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string:first_name
      t.string:last_name
      t.string:display_name
      t.string:password
      t.text:postal_address
      t.string:city
      t.string:state
      t.string:pincode
      t.string:country
      t.string:phone

      t.string    :login,               :null => false
      t.string    :email,               :null => false
      t.string    :crypted_password,    :null => false
      t.string    :password_salt,       :null => false
      t.string    :persistence_token,   :null => false
      
      t.timestamps
    end
    add_index :users, ["login"], :name => "index_users_on_login", :unique => true
    add_index :users, ["email"], :name => "index_users_on_email", :unique => true
    add_index :users, ["persistence_token"], :name => "index_users_on_persistence_token", :unique => true
  end

  def self.down
    drop_table :users
  end
end
