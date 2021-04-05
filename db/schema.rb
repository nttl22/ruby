# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_04_05_061726) do

  create_table "danhmucsaches", charset: "utf8mb4", force: :cascade do |t|
    t.string "tensach"
    t.integer "namxuatban"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "danhmuctacgia_id"
    t.bigint "nhaxuatbans_id"
    t.bigint "theloaisaches_id"
    t.index ["danhmuctacgia_id"], name: "index_danhmucsaches_on_danhmuctacgia_id"
    t.index ["nhaxuatbans_id"], name: "index_danhmucsaches_on_nhaxuatbans_id"
    t.index ["theloaisaches_id"], name: "index_danhmucsaches_on_theloaisaches_id"
  end

  create_table "danhmuctacgia", charset: "utf8mb4", force: :cascade do |t|
    t.string "tentacgia"
    t.string "website"
    t.string "ghichu"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "nhaxuatbans", charset: "utf8mb4", force: :cascade do |t|
    t.string "tennxb"
    t.string "diachi"
    t.string "email"
    t.string "thongtinnguoidaidien"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "theloaisaches", charset: "utf8mb4", force: :cascade do |t|
    t.string "tentheloai"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", charset: "utf8mb4", force: :cascade do |t|
    t.string "email"
    t.string "firstName"
    t.string "lastName"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "danhmucsaches", "danhmuctacgia", column: "danhmuctacgia_id"
  add_foreign_key "danhmucsaches", "nhaxuatbans", column: "nhaxuatbans_id"
  add_foreign_key "danhmucsaches", "theloaisaches", column: "theloaisaches_id"
end
