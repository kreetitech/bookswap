# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110630125302) do

  create_table "books", :force => true do |t|
    t.integer  "user_id",       :null => false
    t.string   "title",         :null => false
    t.string   "author",        :null => false
    t.string   "description"
    t.string   "condition"
    t.string   "isbn"
    t.string   "language",      :null => false
    t.integer  "book_category", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inventries", :force => true do |t|
    t.integer  "user_id",    :null => false
    t.integer  "book_id",    :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "inventries", ["book_id"], :name => "fk_inventries_book_id_books_id"
  add_index "inventries", ["user_id"], :name => "fk_inventries_user_id_users_id"

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "display_name"
    t.string   "password"
    t.text     "postal_address"
    t.string   "city"
    t.string   "state"
    t.string   "pincode"
    t.string   "country"
    t.string   "phone"
    t.string   "login",             :null => false
    t.string   "email",             :null => false
    t.string   "crypted_password",  :null => false
    t.string   "password_salt",     :null => false
    t.string   "persistence_token", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["login"], :name => "index_users_on_login", :unique => true
  add_index "users", ["persistence_token"], :name => "index_users_on_persistence_token", :unique => true

  create_table "wishlists", :force => true do |t|
    t.integer  "user_id",    :null => false
    t.integer  "book_id",    :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "wishlists", ["book_id"], :name => "fk_wishlists_book_id_books_id"
  add_index "wishlists", ["user_id"], :name => "fk_wishlists_user_id_users_id"

end
