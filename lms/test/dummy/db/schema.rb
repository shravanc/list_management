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

ActiveRecord::Schema.define(version: 2018_10_25_172402) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lms_app_items", force: :cascade do |t|
    t.integer "app_id"
    t.integer "item_id"
    t.integer "app_items_count", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lms_app_lists", force: :cascade do |t|
    t.integer "app_id"
    t.integer "list_id"
    t.integer "number", default: 0
    t.integer "app_lists_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lms_apps", force: :cascade do |t|
    t.string "title"
    t.string "auth_token"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lms_collections", force: :cascade do |t|
    t.integer "list_id"
    t.integer "sublist_id"
    t.integer "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lms_item_layouts", force: :cascade do |t|
    t.integer "item_id"
    t.integer "layout_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lms_item_lists", force: :cascade do |t|
    t.integer "item_id"
    t.integer "list_id"
    t.integer "number", default: 0
    t.integer "item_lists_count", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lms_item_media", force: :cascade do |t|
    t.integer "item_id"
    t.integer "medium_id"
    t.integer "number", default: 0
    t.string "description", default: ""
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lms_items", force: :cascade do |t|
    t.string "title"
    t.string "description", default: ""
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lms_layouts", force: :cascade do |t|
    t.string "title", default: ""
    t.string "description", default: ""
    t.integer "limit", default: 0
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lms_list_layouts", force: :cascade do |t|
    t.integer "list_id"
    t.integer "layout_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lms_list_media", force: :cascade do |t|
    t.integer "list_id"
    t.integer "medium_id"
    t.integer "number", default: 0
    t.string "description", default: ""
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lms_lists", force: :cascade do |t|
    t.string "title"
    t.string "description", default: ""
    t.string "slug", default: ""
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lms_media", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "url"
    t.string "media_type"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
