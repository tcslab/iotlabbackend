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

ActiveRecord::Schema.define(version: 20150422144104) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "data_types", force: true do |t|
    t.string   "name",        limit: 30
    t.string   "plainformat", limit: 30
    t.string   "senml",       limit: 30
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "experiments", force: true do |t|
    t.string   "title",             limit: 80
    t.text     "description"
    t.datetime "start_datetime"
    t.datetime "end_datetime"
    t.string   "participation"
    t.integer  "devices"
    t.integer  "voters"
    t.decimal  "ranking"
    t.string   "interaction"
    t.string   "status"
    t.decimal  "latitude",                     precision: 10, scale: 6
    t.decimal  "longitude",                    precision: 10, scale: 6
    t.string   "location"
    t.integer  "radius"
    t.string   "minimum_age"
    t.string   "maximum_age"
    t.string   "gender"
    t.string   "employment_sector"
    t.string   "employment_status"
    t.string   "camera"
    t.string   "accelerometer"
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
    t.string   "name",        limit: 30
    t.boolean  "phone_flag"
    t.string   "urn",         limit: 30
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "latitude",               precision: 10, scale: 6
    t.decimal  "longitude",              precision: 10, scale: 6
    t.integer  "provider_id"
  end

  add_index "nodes", ["provider_id"], name: "index_nodes_on_provider_id", using: :btree

  create_table "providers", force: true do |t|
    t.string   "name",        limit: 40
    t.text     "description"
    t.string   "urn_prefix"
    t.string   "address"
    t.string   "location"
    t.string   "url"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "providers", ["user_id"], name: "index_providers_on_user_id", using: :btree

  create_table "reservations", force: true do |t|
    t.datetime "start_datetime"
    t.datetime "end_datetime"
    t.integer  "user_id"
    t.string   "reservation_key"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reservations", ["user_id"], name: "index_reservations_on_user_id", using: :btree

  create_table "resource_reservations", force: true do |t|
    t.integer  "reservation_id"
    t.integer  "resource_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "resource_reservations", ["reservation_id"], name: "index_resource_reservations_on_reservation_id", using: :btree
  add_index "resource_reservations", ["resource_id"], name: "index_resource_reservations_on_resource_id", using: :btree

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

  create_table "resources", force: true do |t|
    t.integer  "ipso_index"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name",             limit: 40
    t.integer  "resource_type_id"
    t.integer  "function_set_id"
    t.integer  "node_id"
  end

  add_index "resources", ["function_set_id"], name: "index_resources_on_function_set_id", using: :btree
  add_index "resources", ["name"], name: "index_resources_on_name", unique: true, using: :btree
  add_index "resources", ["node_id"], name: "index_resources_on_node_id", using: :btree
  add_index "resources", ["resource_type_id"], name: "index_resources_on_resource_type_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name",                   limit: 20
    t.string   "surname",                limit: 20
    t.string   "address"
    t.string   "hometown",               limit: 40
    t.string   "country",                limit: 30
    t.string   "gender",                 limit: 10
    t.string   "education"
    t.date     "birthdate"
    t.string   "employment_sector",      limit: 50
    t.string   "employment_status",      limit: 50
    t.string   "username",               limit: 30,                                 null: false
    t.string   "password_hash"
    t.string   "email",                  limit: 30,                                 null: false
    t.boolean  "email_confirmed",                   default: false,                 null: false
    t.text     "security_stamp"
    t.string   "phone_number",           limit: 50
    t.boolean  "phone_number_confirmed",            default: false,                 null: false
    t.boolean  "two_factor_confirmed",              default: false,                 null: false
    t.datetime "lockout_end_date_utc",              default: '2015-04-18 09:29:12', null: false
    t.integer  "access_failed_count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
