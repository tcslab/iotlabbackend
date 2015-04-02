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

ActiveRecord::Schema.define(version: 20150402135430) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "data_types", force: true do |t|
    t.string   "name",        limit: 30
    t.string   "plainformat", limit: 30
    t.string   "senml",       limit: 30
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "function_sets", force: true do |t|
    t.string   "name",        limit: 30
    t.string   "restype"
    t.text     "description"
    t.string   "root_path",   limit: 20
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "function_sets", ["name"], name: "index_function_sets_on_name", unique: true, using: :btree

  create_table "interfaces", force: true do |t|
    t.string   "name",        limit: 30
    t.string   "abreviation", limit: 10
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nodes", force: true do |t|
    t.string   "name",       limit: 30
    t.string   "location",   limit: 50
    t.boolean  "phone_flag"
    t.string   "urn",        limit: 30
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "resource_types", force: true do |t|
    t.string   "name"
    t.string   "restype"
    t.text     "notes"
    t.integer  "interface_id"
    t.integer  "data_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "resource_types", ["data_type_id"], name: "index_resource_types_on_data_type_id", using: :btree
  add_index "resource_types", ["interface_id"], name: "index_resource_types_on_interface_id", using: :btree

end
