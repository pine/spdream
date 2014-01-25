# encoding: UTF-8
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

ActiveRecord::Schema.define(:version => 20140125041411) do

  create_table "books", :force => true do |t|
    t.string   "photo"
    t.string   "title"
    t.string   "auther"
    t.text     "outline"
    t.string   "isbn10",             :default => "0"
    t.string   "isbn13",             :default => "0"
    t.string   "opac_id"
    t.integer  "value"
    t.integer  "category_id"
    t.integer  "child_category_id"
    t.boolean  "request",            :default => false
    t.boolean  "deleted",            :default => false
    t.string   "tag0"
    t.string   "tag1"
    t.string   "tag2"
    t.string   "tag3"
    t.string   "tag4"
    t.string   "tag5"
    t.string   "tag6"
    t.string   "tag7"
    t.string   "photo_file_name"
    t.integer  "photo_file_size"
    t.string   "photo_content_type"
    t.datetime "photo_updated_at"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
  end

  add_index "books", ["category_id"], :name => "index_books_on_category_id"
  add_index "books", ["child_category_id"], :name => "index_books_on_child_category_id"

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "priority"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "child_categories", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "priority"
    t.integer  "category_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "child_categories", ["category_id"], :name => "index_child_categories_on_category_id"

  create_table "faculties", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "labs", :force => true do |t|
    t.string   "name"
    t.integer  "faculty_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "labs", ["faculty_id"], :name => "index_labs_on_faculty_id"

  create_table "reviews", :force => true do |t|
    t.string   "title"
    t.text     "comment"
    t.integer  "value_good", :default => 0
    t.integer  "value_bad",  :default => 0
    t.integer  "value_book", :default => 0
    t.boolean  "enabled",    :default => false
    t.integer  "book_id"
    t.boolean  "request",    :default => false
    t.boolean  "deleted",    :default => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  add_index "reviews", ["book_id"], :name => "index_reviews_on_book_id"

  create_table "schedules", :force => true do |t|
    t.date     "date"
    t.time     "time"
    t.string   "type"
    t.string   "title"
    t.text     "intro"
    t.string   "photo"
    t.string   "photo_file_name"
    t.integer  "photo_file_size"
    t.string   "photo_content_type"
    t.datetime "photo_updated_at"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "name"
  end

  create_table "tags", :force => true do |t|
    t.string   "name"
    t.text     "intro"
    t.integer  "priority",   :default => 1
    t.boolean  "enabled",    :default => false
    t.boolean  "request",    :default => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "teachers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "theses", :force => true do |t|
    t.string   "title"
    t.string   "author"
    t.string   "student_id"
    t.string   "course"
    t.integer  "year"
    t.boolean  "enabled"
    t.integer  "lab_id"
    t.integer  "faculty_id", :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "data"
    t.string   "file"
    t.boolean  "full_text"
  end

  add_index "theses", ["faculty_id"], :name => "index_theses_on_faculty_id"
  add_index "theses", ["lab_id"], :name => "index_theses_on_lab_id"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
