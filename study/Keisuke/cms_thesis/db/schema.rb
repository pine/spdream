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

ActiveRecord::Schema.define(:version => 20140116112159) do

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
    t.integer  "teacher_id"
    t.integer  "faculty_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "data"
    t.string   "file"
  end

  add_index "theses", ["faculty_id"], :name => "index_theses_on_faculty_id"
  add_index "theses", ["lab_id"], :name => "index_theses_on_lab_id"
  add_index "theses", ["teacher_id"], :name => "index_theses_on_teacher_id"

end
