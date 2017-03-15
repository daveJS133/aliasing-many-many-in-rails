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

ActiveRecord::Schema.define(version: 20170315082234) do

  create_table "favourite_ingredients", force: :cascade do |t|
    t.integer  "ingredient_id"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "favourite_recipes", force: :cascade do |t|
    t.integer  "recipe_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "food_types", force: :cascade do |t|
    t.string   "name"
    t.integer  "recipies_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "food_types", ["recipies_id"], name: "index_food_types_on_recipies_id"

  create_table "ingredients", force: :cascade do |t|
    t.string   "name"
    t.integer  "food_type_id"
    t.integer  "recipies_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "ingredients", ["food_type_id"], name: "index_ingredients_on_food_type_id"
  add_index "ingredients", ["recipies_id"], name: "index_ingredients_on_recipies_id"

  create_table "recipes", force: :cascade do |t|
    t.string   "name"
    t.integer  "users_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "recipes", ["users_id"], name: "index_recipes_on_users_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
