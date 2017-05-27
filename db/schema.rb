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

ActiveRecord::Schema.define(version: 20170527093346) do

  create_table "animal_types", force: :cascade do |t|
    t.string   "type",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "people", primary_key: "dni", force: :cascade do |t|
    t.string   "name",                 limit: 255
    t.string   "surname",              limit: 255
    t.string   "email",                limit: 255
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "picture_file_name",    limit: 255
    t.string   "picture_content_type", limit: 255
    t.integer  "picture_file_size",    limit: 4
    t.datetime "picture_updated_at"
  end

  create_table "pets", force: :cascade do |t|
    t.string   "name",                 limit: 255
    t.string   "owner",                limit: 255
    t.boolean  "alive"
    t.integer  "age",                  limit: 4
    t.string   "sex",                  limit: 10
    t.string   "animal_type",          limit: 100
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "picture_file_name",    limit: 255
    t.string   "picture_content_type", limit: 255
    t.integer  "picture_file_size",    limit: 4
    t.datetime "picture_updated_at"
  end

  add_index "pets", ["owner"], name: "owner", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "login",           limit: 255
    t.string   "password_digest", limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_foreign_key "pets", "people", column: "owner", primary_key: "dni", name: "pets_ibfk_1", on_delete: :cascade
end
