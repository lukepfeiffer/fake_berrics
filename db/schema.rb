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

ActiveRecord::Schema.define(version: 20141102135149) do

  create_table "authem_sessions", force: true do |t|
    t.string   "role",                    null: false
    t.integer  "subject_id",              null: false
    t.string   "subject_type",            null: false
    t.string   "token",        limit: 60, null: false
    t.datetime "expires_at",              null: false
    t.integer  "ttl",                     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "authem_sessions", ["expires_at", "subject_type", "subject_id"], name: "index_authem_sessions_subject"
  add_index "authem_sessions", ["expires_at", "token"], name: "index_authem_sessions_on_expires_at_and_token", unique: true

  create_table "carts", force: true do |t|
    t.integer "user_id"
  end

  create_table "items", force: true do |t|
    t.integer "quantity"
    t.integer "product_id"
    t.integer "cart_id"
  end

  create_table "products", force: true do |t|
    t.string  "name"
    t.string  "desc"
    t.integer "price"
    t.string  "category"
    t.string  "filepicker_url"
  end

  create_table "reviews", force: true do |t|
    t.string   "text"
    t.integer  "rating"
    t.integer  "product_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                           null: false
    t.string   "password_digest",                 null: false
    t.string   "password_reset_token", limit: 60, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "videos", force: true do |t|
    t.string   "name"
    t.text     "desc"
    t.string   "filepicker_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "category"
  end

end
