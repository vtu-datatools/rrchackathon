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

ActiveRecord::Schema.define(version: 2018_09_30_212049) do

  create_table "landlords", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rentals", force: :cascade do |t|
    t.string "housing_type"
    t.integer "price"
    t.string "address"
    t.integer "bedrooms"
    t.float "bathrooms"
    t.integer "area"
    t.boolean "parking", default: false
    t.boolean "laundry", default: false
    t.boolean "dishwasher", default: false
    t.boolean "wheelchair_accessible", default: false
    t.boolean "is_furnished", default: false
    t.boolean "no_smoking", default: false
    t.boolean "cats_allowed", default: false
    t.boolean "dogs_allowed", default: false
    t.boolean "yard", default: false
    t.float "latitude"
    t.float "longitude"
    t.string "data_source"
    t.string "post_id"
    t.string "post_link"
    t.datetime "post_time"
    t.integer "landlord_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["landlord_id"], name: "index_rentals_on_landlord_id"
    t.index ["user_id"], name: "index_rentals_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
