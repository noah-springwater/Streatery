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

ActiveRecord::Schema.define(version: 20151107014312) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "foodtrucks", force: :cascade do |t|
    t.string   "name"
    t.string   "img_url"
    t.string   "cuisine"
    t.string   "card"
    t.text     "menu"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "foodtrucks", ["user_id"], name: "index_foodtrucks_on_user_id", using: :btree

  create_table "messages", force: :cascade do |t|
    t.text     "body"
    t.integer  "foodtruck_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "messages", ["foodtruck_id"], name: "index_messages_on_foodtruck_id", using: :btree

  create_table "reviews", force: :cascade do |t|
    t.string   "author"
    t.integer  "rating"
    t.text     "message"
    t.integer  "foodtruck_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "reviews", ["foodtruck_id"], name: "index_reviews_on_foodtruck_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.string   "is_vendor"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "foodtrucks", "users"
  add_foreign_key "messages", "foodtrucks"
  add_foreign_key "reviews", "foodtrucks"
end
