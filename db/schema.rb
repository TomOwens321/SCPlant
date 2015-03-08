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

ActiveRecord::Schema.define(version: 20150307173139) do

  create_table "common_names", force: :cascade do |t|
    t.string   "name"
    t.string   "common_name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "families", force: :cascade do |t|
    t.string   "name"
    t.string   "common_name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "genus", force: :cascade do |t|
    t.string   "name"
    t.string   "common_name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.string   "area"
    t.string   "city"
    t.string   "county"
    t.string   "state"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "altitude"
    t.text     "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plants", force: :cascade do |t|
    t.string   "name"
    t.integer  "family_id"
    t.integer  "genus_id"
    t.integer  "species_id"
    t.integer  "common_name_id"
    t.text     "description"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "plants", ["common_name_id"], name: "index_plants_on_common_name_id"
  add_index "plants", ["family_id"], name: "index_plants_on_family_id"
  add_index "plants", ["genus_id"], name: "index_plants_on_genus_id"
  add_index "plants", ["species_id"], name: "index_plants_on_species_id"

  create_table "seeds", force: :cascade do |t|
    t.string   "lot"
    t.integer  "plant_id"
    t.date     "collection_date"
    t.integer  "vendor_id"
    t.integer  "location_id"
    t.string   "collected_by"
    t.boolean  "clean"
    t.integer  "quantity"
    t.integer  "remaining"
    t.text     "notes"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "seeds", ["location_id"], name: "index_seeds_on_location_id"
  add_index "seeds", ["plant_id"], name: "index_seeds_on_plant_id"
  add_index "seeds", ["vendor_id"], name: "index_seeds_on_vendor_id"

  create_table "species", force: :cascade do |t|
    t.string   "name"
    t.string   "common_name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "vendors", force: :cascade do |t|
    t.string   "name"
    t.string   "contact"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "phone"
    t.string   "email"
    t.string   "website"
    t.text     "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
