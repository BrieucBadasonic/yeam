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

ActiveRecord::Schema.define(version: 2021_09_14_124508) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "benevoles", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "telephone"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "binomes", force: :cascade do |t|
    t.string "request_status"
    t.string "to_do"
    t.string "status"
    t.date "connection_date"
    t.bigint "user_id", null: false
    t.bigint "benevole_id", null: false
    t.bigint "client_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["benevole_id"], name: "index_binomes_on_benevole_id"
    t.index ["client_id"], name: "index_binomes_on_client_id"
    t.index ["user_id"], name: "index_binomes_on_user_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "telephone"
    t.string "email"
    t.string "residency"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reports", force: :cascade do |t|
    t.date "date"
    t.text "content"
    t.bigint "user_id", null: false
    t.bigint "benevole_id", null: false
    t.bigint "binome_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["benevole_id"], name: "index_reports_on_benevole_id"
    t.index ["binome_id"], name: "index_reports_on_binome_id"
    t.index ["user_id"], name: "index_reports_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.string "telephone"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "binomes", "benevoles"
  add_foreign_key "binomes", "clients"
  add_foreign_key "binomes", "users"
  add_foreign_key "reports", "benevoles"
  add_foreign_key "reports", "binomes"
  add_foreign_key "reports", "users"
end
