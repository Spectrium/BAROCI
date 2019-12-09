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

ActiveRecord::Schema.define(version: 2019_12_09_091001) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "candidats", force: :cascade do |t|
    t.string "name"
    t.string "parti"
    t.integer "resultat"
    t.bigint "region_id"
    t.bigint "commune_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["commune_id"], name: "index_candidats_on_commune_id"
    t.index ["region_id"], name: "index_candidats_on_region_id"
  end

  create_table "comments", force: :cascade do |t|
    t.string "content"
    t.bigint "user_id"
    t.bigint "engagment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["engagment_id"], name: "index_comments_on_engagment_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "communes", force: :cascade do |t|
    t.string "name"
    t.bigint "region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["region_id"], name: "index_communes_on_region_id"
  end

  create_table "daties", force: :cascade do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "engagments", force: :cascade do |t|
    t.string "content"
    t.bigint "promess_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["promess_id"], name: "index_engagments_on_promess_id"
  end

  create_table "promesses", force: :cascade do |t|
    t.string "content"
    t.bigint "candidat_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["candidat_id"], name: "index_promesses_on_candidat_id"
  end

  create_table "regions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "surveys", force: :cascade do |t|
    t.boolean "agree"
    t.boolean "disagree"
    t.boolean "hesitat"
    t.bigint "engagment_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["engagment_id"], name: "index_surveys_on_engagment_id"
    t.index ["user_id"], name: "index_surveys_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "full_name"
    t.integer "age"
    t.string "cin"
    t.boolean "is_admins"
    t.string "adress"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "surveys", "engagments"
  add_foreign_key "surveys", "users"
end
