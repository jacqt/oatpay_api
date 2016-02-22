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

ActiveRecord::Schema.define(version: 20160124021715) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.boolean  "archived",    default: false
    t.integer  "price_cents"
    t.integer  "capacity",    default: 0
    t.integer  "society_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["archived"], name: "index_items_on_archived", using: :btree
    t.index ["price_cents"], name: "index_items_on_price_cents", using: :btree
    t.index ["society_id"], name: "index_items_on_society_id", using: :btree
  end

  create_table "payments", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_payments_on_email", using: :btree
    t.index ["item_id"], name: "index_payments_on_item_id", using: :btree
  end

  create_table "societies", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "nickname"
    t.string   "auth_token"
    t.string   "sort_code"
    t.string   "account_number"
    t.integer  "balance_cents",   default: 0
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["account_number"], name: "index_societies_on_account_number", using: :btree
    t.index ["balance_cents"], name: "index_societies_on_balance_cents", using: :btree
    t.index ["email"], name: "index_societies_on_email", unique: true, using: :btree
    t.index ["nickname"], name: "index_societies_on_nickname", unique: true, using: :btree
    t.index ["sort_code"], name: "index_societies_on_sort_code", using: :btree
  end

  add_foreign_key "items", "societies"
  add_foreign_key "payments", "items"
end
