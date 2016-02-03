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

ActiveRecord::Schema.define(version: 20160203093425) do

  create_table "hardware_categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hardwares", force: true do |t|
    t.string   "name"
    t.string   "asset_tag"
    t.string   "serial_number"
    t.text     "description"
    t.text     "note"
    t.string   "cost"
    t.date     "purchase_date"
    t.date     "warranty_end_date"
    t.date     "eol"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "mdl"
    t.integer  "location_id"
    t.integer  "hardware_category_id"
    t.integer  "manufacturer_id"
    t.integer  "supplier_id"
  end

  create_table "locations", force: true do |t|
    t.string   "name"
    t.string   "group"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "person_id"
  end

  create_table "manufacturers", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "softwares", force: true do |t|
    t.string   "name"
    t.string   "asset_tag"
    t.string   "invoice"
    t.string   "cost"
    t.date     "purchase_date"
    t.date     "renewal_date"
    t.string   "licence_key"
    t.integer  "number_of_licences"
    t.string   "licence_type"
    t.text     "description"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "supplier_id"
  end

  create_table "suppliers", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
