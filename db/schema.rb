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

ActiveRecord::Schema.define(version: 20160802091648) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comment_flea_markets", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fleas", force: :cascade do |t|
    t.string   "application_period"
    t.integer  "number_of_recruitment"
    t.string   "remark"
    t.string   "place"
    t.datetime "event_start_date"
    t.datetime "event_end_date"
    t.integer  "entrance_fee"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "item_images", force: :cascade do |t|
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.integer  "price"
    t.string   "material"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "like_flea_markets", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "flea_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "like_flea_markets", ["flea_id"], name: "index_like_flea_markets_on_flea_id"
  add_index "like_flea_markets", ["user_id"], name: "index_like_flea_markets_on_user_id"

  create_table "participations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "production_images", force: :cascade do |t|
    t.string   "url"
    t.string   "process"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recomment_flea_markets", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resumes", force: :cascade do |t|
    t.integer  "career"
    t.string   "price_range"
    t.string   "brand_introduction"
    t.string   "item_introduction"
    t.string   "self_introduction"
    t.integer  "age"
    t.integer  "number_of_participants"
    t.string   "brand_name"
    t.string   "sns_url"
    t.boolean  "is_public"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",       null: false
    t.string   "encrypted_password",     default: "",       null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,        null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name",                   default: "",       null: false
    t.string   "phone_number",           default: "",       null: false
    t.string   "address",                default: "",       null: false
    t.string   "level",                  default: "seller"
    t.string   "tier",                   default: "black"
    t.string   "brand",                  default: ""
    t.string   "brand_number",           default: ""
    t.string   "profile_image_url",      default: ""
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
