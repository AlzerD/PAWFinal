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

ActiveRecord::Schema.define(version: 20140526151559) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "match_picks", force: true do |t|
    t.integer  "userID"
    t.integer  "matchID"
    t.integer  "userPick"
    t.integer  "result"
    t.integer  "points"
    t.boolean  "closed"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "blockID"
  end

  create_table "matches", force: true do |t|
    t.integer  "block"
    t.string   "round"
    t.date     "date"
    t.string   "day"
    t.string   "time"
    t.string   "venue"
    t.string   "team1"
    t.string   "team2"
    t.integer  "result"
    t.string   "resultString"
    t.boolean  "played"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.boolean  "admin"
    t.integer  "points"
    t.integer  "leagues",                array: true
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_reset_token"
    t.datetime "password_expires_after"
    t.string   "authentication_token"
    t.datetime "signed_up_on"
    t.datetime "last_signed_in_on"
    t.integer  "curr_block"
  end

end
