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

ActiveRecord::Schema.define(version: 20150620144244) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "airings", force: :cascade do |t|
    t.string   "show_id"
    t.string   "client_id"
    t.decimal  "gross_cost"
    t.decimal  "net_cost"
    t.date     "airdate"
    t.string   "airweek_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "bcastweek"
  end

  create_table "clients", force: :cascade do |t|
    t.string   "clientname"
    t.string   "commissionstype"
    t.string   "AM_name"
    t.string   "PM_or_AC_name"
    t.string   "PM_or_AC2_name"
    t.string   "Analytics_name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "logourl"
  end

  create_table "networks", force: :cascade do |t|
    t.string   "netname"
    t.boolean  "bcast_month"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "shows", force: :cascade do |t|
    t.string   "showname"
    t.integer  "network_id"
    t.string   "placement"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.string   "password_confirmation"
    t.string   "department"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "password_digest"
  end

end
