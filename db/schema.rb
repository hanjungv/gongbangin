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

ActiveRecord::Schema.define(version: 20160825051357) do

  create_table "bootsy_image_galleries", force: :cascade do |t|
    t.integer  "bootsy_resource_id"
    t.string   "bootsy_resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bootsy_images", force: :cascade do |t|
    t.string   "image_file"
    t.integer  "image_gallery_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comment_flea_markets", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "flea_sellers", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "flea_id"
    t.string   "user_email"
    t.string   "user_name"
    t.string   "num_of_member"
    t.string   "card_or_not"
    t.string   "career"
    t.string   "classification"
    t.string   "item"
    t.string   "motivation"
    t.string   "user_tier"
    t.text     "review"
    t.integer  "score",          default: 0
    t.string   "isSelect",       default: "false"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "fleas", force: :cascade do |t|
    t.string   "name"
    t.date     "application_start_date"
    t.date     "application_end_date"
    t.integer  "number_of_recruitment"
    t.string   "remark"
    t.string   "city_place"
    t.string   "detail_place"
    t.date     "event_start_date"
    t.date     "event_end_date"
    t.integer  "entrance_fee"
    t.string   "poster_url"
    t.integer  "user_id"
    t.string   "join_type"
    t.integer  "join_member",            default: 0
    t.integer  "select_member",          default: 0
    t.string   "agree1",                 default: ""
    t.string   "agree2",                 default: ""
    t.string   "agree3",                 default: ""
    t.string   "agree4",                 default: ""
    t.string   "agree5",                 default: ""
    t.integer  "item_count"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
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
    t.string   "period"
    t.integer  "user_id"
    t.string   "url"
    t.string   "classification"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "joined_flealists", force: :cascade do |t|
    t.integer  "flea_id"
    t.string   "user_id"
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

  create_table "main_activities", force: :cascade do |t|
    t.string   "name"
    t.string   "etc_name",   default: ""
    t.string   "skill_part"
    t.string   "etc_part",   default: ""
    t.integer  "percentage", default: 0
    t.integer  "user_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "notices", force: :cascade do |t|
    t.string   "title"
    t.string   "content"
    t.string   "url"
    t.integer  "view_count", default: 0
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "participations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "production_images", force: :cascade do |t|
    t.text     "image"
    t.text     "process"
    t.integer  "item_id"
    t.text     "title"
    t.text     "content"
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

  create_table "user_prizes", force: :cascade do |t|
    t.string   "prize_name"
    t.string   "contest_name"
    t.datetime "prize_date"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",                null: false
    t.string   "encrypted_password",     default: "",                null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,                 null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name",                   default: "",                null: false
    t.string   "nickname",               default: "",                null: false
    t.string   "phone_number",           default: "",                null: false
    t.string   "address",                default: "",                null: false
    t.string   "level",                  default: "seller"
    t.string   "introduction",           default: "안녕하세요!만나서 반가워요!"
    t.string   "tier",                   default: "purple"
    t.integer  "score",                  default: 0
    t.string   "activity_area",          default: "서울"
    t.string   "brand",                  default: "없음"
    t.string   "brand_number",           default: "없음"
    t.string   "brand_place"
    t.string   "profile_image_url",      default: "gangposter.jpg"
    t.string   "user_page",              default: "없음"
    t.string   "facebook_id",            default: "없음"
    t.string   "twitter_id",             default: "없음"
    t.string   "instagram_id",           default: "없음"
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
