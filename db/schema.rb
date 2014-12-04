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

ActiveRecord::Schema.define(version: 20141203212556) do

  create_table "reviews", force: true do |t|
    t.string   "name"
    t.integer  "stars"
    t.text     "comment"
    t.integer  "stadium_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reviews", ["stadium_id"], name: "index_reviews_on_stadium_id"

  create_table "stadiums", force: true do |t|
    t.string   "name"
    t.string   "city"
    t.string   "state"
    t.date     "opening"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "teamname"
    t.integer  "capacity"
    t.integer  "centerfieldft"
    t.string   "website"
    t.string   "affiliate"
    t.date     "closing"
    t.string   "league"
    t.string   "image_file_name"
  end

end
