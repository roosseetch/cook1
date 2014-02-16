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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140216092306) do

  create_table "caterings", force: true do |t|
    t.string   "title"
    t.string   "adress"
    t.string   "phone"
    t.string   "email"
    t.text     "work_time"
    t.decimal  "minimum_order"
    t.decimal  "delivery_price"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "offices", force: true do |t|
    t.string   "title"
    t.string   "adress"
    t.string   "phone"
    t.text     "description"
    t.integer  "catering_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
  end

  add_index "offices", ["catering_id"], name: "index_offices_on_catering_id"

end
