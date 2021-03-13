# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_13_125921) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "engines", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "features", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "listing_features", force: :cascade do |t|
    t.bigint "listing_id", null: false
    t.bigint "feature_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["feature_id"], name: "index_listing_features_on_feature_id"
    t.index ["listing_id"], name: "index_listing_features_on_listing_id"
  end

  create_table "listings", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.bigint "category_id", null: false
    t.text "description"
    t.integer "condition"
    t.boolean "insurance"
    t.integer "images"
    t.boolean "available"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "engine_id", null: false
    t.integer "odometer"
    t.integer "color"
    t.integer "transmission"
    t.integer "starter"
    t.index ["category_id"], name: "index_listings_on_category_id"
    t.index ["engine_id"], name: "index_listings_on_engine_id"
  end

  add_foreign_key "listing_features", "features"
  add_foreign_key "listing_features", "listings"
  add_foreign_key "listings", "categories"
  add_foreign_key "listings", "engines"
end
