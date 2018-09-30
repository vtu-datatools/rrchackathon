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

ActiveRecord::Schema.define(version: 2018_09_29_231954) do

  create_table "landlords", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rentals", force: :cascade do |t|
    t.string "address", default: "unknown"
    t.integer "area", default: 0
    t.float "bathrooms", default: 0.0
    t.integer "bedrooms", default: 0
    t.float "latitude", default: 0.0
    t.float "longitude", default: 0.0
    t.boolean "no_smoking", default: true
    t.boolean "cats_allowed", default: true
    t.boolean "dogs_allowed", default: true
    t.boolean "wheelchair_accessible", default: true
    t.string "post_id", default: "unknown"
    t.string "post_link", default: "unknown"
    t.datetime "post_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
