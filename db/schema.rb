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

ActiveRecord::Schema.define(version: 20161110133908) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cars", force: :cascade do |t|
    t.text     "brand",       null: false
    t.integer  "client_id",   null: false
    t.text     "model",       null: false
    t.text     "contents",    null: false
    t.text     "vin",         null: false
    t.integer  "color",       null: false
    t.integer  "contract_id", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["client_id"], name: "index_cars_on_client_id", using: :btree
    t.index ["contract_id"], name: "index_cars_on_contract_id", using: :btree
  end

  create_table "clients", force: :cascade do |t|
    t.text     "last_name",       null: false
    t.text     "first_name",      null: false
    t.text     "second_name",     null: false
    t.text     "telephone",       null: false
    t.text     "passport_number", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "contracts", force: :cascade do |t|
    t.date     "date_of_registration", null: false
    t.float    "price",                null: false
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_foreign_key "cars", "clients"
  add_foreign_key "cars", "contracts"
end
