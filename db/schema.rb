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

ActiveRecord::Schema.define(version: 2020_05_19_145557) do

  create_table "comments", force: :cascade do |t|
    t.string "name", null: false
    t.text "want"
    t.text "reward"
    t.text "contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "designs", force: :cascade do |t|
    t.string "title", null: false
    t.string "name", null: false
    t.string "id_image_id", null: false
    t.string "sample_image_id"
    t.integer "category", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "name", null: false
    t.text "want", null: false
    t.text "reward", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "likes", force: :cascade do |t|
    t.integer "design_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "turnips", force: :cascade do |t|
    t.string "name", null: false
    t.integer "price", null: false
    t.string "islandpass", null: false
    t.text "want", null: false
    t.time "started_at", null: false
    t.time "finished_at", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
