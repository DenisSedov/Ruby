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

ActiveRecord::Schema.define(:version => 20120422070146) do

  create_table "contactinformations", :force => true do |t|
    t.string   "telephone"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "skillgroups", :force => true do |t|
    t.integer  "seniorid"
    t.integer  "skill"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "skills", :force => true do |t|
    t.string   "fullname"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "statuses", :force => true do |t|
    t.string   "fullname"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "pas"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "users", ["name"], :name => "index_users_on_name", :unique => true

  create_table "vacancies", :force => true do |t|
    t.string   "fullname"
    t.date     "addingdate"
    t.integer  "validperiod"
    t.float    "salary"
    t.integer  "contactinfo"
    t.integer  "desirableskill"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "workers", :force => true do |t|
    t.string   "name"
    t.string   "fname"
    t.string   "oname"
    t.integer  "contactinfo"
    t.integer  "status"
    t.float    "desiralesalary"
    t.integer  "skill"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

end
