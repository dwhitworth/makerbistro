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

ActiveRecord::Schema.define(version: 20140320144744) do

  create_table "ingredients", force: true do |t|
    t.string   "name"
    t.boolean  "vegan"
    t.boolean  "vegetarian"
    t.boolean  "gluten_free"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ingredients_items", force: true do |t|
    t.integer  "ingredient_id"
    t.integer  "item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ingredients_items", ["ingredient_id"], name: "index_ingredients_items_on_ingredient_id"
  add_index "ingredients_items", ["item_id"], name: "index_ingredients_items_on_item_id"

  create_table "items", force: true do |t|
    t.string   "name"
    t.decimal  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
