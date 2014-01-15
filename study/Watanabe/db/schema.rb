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

ActiveRecord::Schema.define(:version => 20140114081557) do

  create_table "books", :force => true do |t|
    t.string   "title"
    t.string   "auther"
    t.text     "outline"
    t.string   "isbn"
    t.string   "opac_id"
    t.integer  "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

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
