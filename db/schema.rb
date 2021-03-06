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

ActiveRecord::Schema.define(version: 20160202183153) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "allergens", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dishes", force: :cascade do |t|
    t.string "name"
    t.string "ingredients"
  end

  create_table "dishes_restaurants", force: :cascade do |t|
    t.integer "dish_id"
    t.integer "restaurant_id"
  end

  create_table "keywords", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "keywords_allergens", force: :cascade do |t|
    t.integer "keyword_id"
    t.integer "allergen_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string  "name"
    t.string  "location"
    t.integer "views"
    t.string  "phone"
  end

end
