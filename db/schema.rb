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

ActiveRecord::Schema.define(version: 2020_09_02_103606) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.integer "parent_id"
    t.integer "lft", null: false
    t.integer "rgt", null: false
    t.integer "depth", default: 0, null: false
    t.integer "children_count", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lft"], name: "index_categories_on_lft"
    t.index ["parent_id"], name: "index_categories_on_parent_id"
    t.index ["rgt"], name: "index_categories_on_rgt"
  end

  create_table "cpus", force: :cascade do |t|
    t.integer "core_count"
    t.integer "performance"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "generation_id"
    t.integer "cpusocket_id"
  end

  create_table "cpusockets", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "generations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gpus", force: :cascade do |t|
    t.integer "memory"
    t.integer "fan_quantity"
    t.integer "performance"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phonecallbacks", force: :cascade do |t|
    t.string "name"
    t.string "phonenumber"
    t.integer "state"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.string "description"
    t.integer "quantity"
    t.integer "category_id"
    t.string "avatar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "company"
  end

end
