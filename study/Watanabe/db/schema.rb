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

ActiveRecord::Schema.define(:version => 20140119110856) do

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
    t.boolean  "enabled"
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
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
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

  create_table "reviews", :force => true do |t|
    t.string   "title"
    t.text     "comment"
    t.integer  "value_good"
    t.integer  "value_bad"
    t.integer  "value_book"
    t.boolean  "enabled"
    t.datetime "date"
    t.integer  "book_id"
    t.boolean  "deleted"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "reviews", ["book_id"], :name => "index_reviews_on_book_id"

  create_table "tags", :force => true do |t|
    t.string   "name"
    t.text     "intro"
    t.integer  "priority"
    t.boolean  "enabled"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
