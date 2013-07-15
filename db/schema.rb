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

ActiveRecord::Schema.define(version: 20130713000655) do

  create_table "albums", force: true do |t|
    t.date     "recorded_on"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "albums_arrangements", id: false, force: true do |t|
    t.integer "album_id",       null: false
    t.integer "arrangement_id", null: false
  end

  add_index "albums_arrangements", ["album_id", "arrangement_id"], name: "index_albums_arrangements_on_album_id_and_arrangement_id", unique: true, using: :btree

  create_table "albums_sob_classes", id: false, force: true do |t|
    t.integer "album_id",     null: false
    t.integer "sob_class_id", null: false
  end

  add_index "albums_sob_classes", ["album_id", "sob_class_id"], name: "index_albums_sob_classes_on_album_id_and_sob_class_id", unique: true, using: :btree

  create_table "anecdotes", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "uploaded_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "anecdotes_users", id: false, force: true do |t|
    t.integer "anecdote_id", null: false
    t.integer "user_id",     null: false
  end

  add_index "anecdotes_users", ["anecdote_id", "user_id"], name: "index_anecdotes_users_on_anecdote_id_and_user_id", unique: true, using: :btree

  create_table "arrangements", force: true do |t|
    t.string   "title"
    t.integer  "uploaded_by"
    t.string   "description"
    t.integer  "public"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "arrangements_users", id: false, force: true do |t|
    t.integer "arrangement_id", null: false
    t.integer "user_id",        null: false
  end

  add_index "arrangements_users", ["arrangement_id", "user_id"], name: "index_arrangements_users_on_arrangement_id_and_user_id", unique: true, using: :btree

  create_table "history_articles", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "history_articles_users", id: false, force: true do |t|
    t.integer "history_article_id", null: false
    t.integer "user_id",            null: false
  end

  add_index "history_articles_users", ["history_article_id", "user_id"], name: "index_history_articles_users_on_history_article_id_and_user_id", unique: true, using: :btree

  create_table "photographs", force: true do |t|
    t.string   "description"
    t.integer  "uploaded_by"
    t.string   "title"
    t.integer  "public"
    t.integer  "history_article_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "photographs_users", id: false, force: true do |t|
    t.integer "photograph_id", null: false
    t.integer "user_id",       null: false
  end

  add_index "photographs_users", ["photograph_id", "user_id"], name: "index_photographs_users_on_photograph_id_and_user_id", unique: true, using: :btree

  create_table "positions", force: true do |t|
    t.string   "name"
    t.integer  "introduced"
    t.string   "description"
    t.integer  "created_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "positions_users", id: false, force: true do |t|
    t.integer "position_id", null: false
    t.integer "user_id",     null: false
  end

  add_index "positions_users", ["position_id", "user_id"], name: "index_positions_users_on_position_id_and_user_id", unique: true, using: :btree

  create_table "recordings", force: true do |t|
    t.string   "description"
    t.integer  "uploaded_by"
    t.string   "title"
    t.integer  "public"
    t.date     "recorded_on"
    t.integer  "album_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recordings_users", id: false, force: true do |t|
    t.integer "recording_id", null: false
    t.integer "user_id",      null: false
  end

  add_index "recordings_users", ["recording_id", "user_id"], name: "index_recordings_users_on_recording_id_and_user_id", unique: true, using: :btree

  create_table "sob_classes", force: true do |t|
    t.integer  "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sob_classes_users", id: false, force: true do |t|
    t.integer "sob_class_id", null: false
    t.integer "user_id",      null: false
  end

  create_table "stories_users", id: false, force: true do |t|
    t.integer "story_id", null: false
    t.integer "user_id",  null: false
  end

  add_index "stories_users", ["story_id", "user_id"], name: "index_stories_users_on_story_id_and_user_id", unique: true, using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "username"
    t.integer  "yaleyear"
    t.string   "college"
    t.integer  "sobclass"
    t.string   "voicepart"
    t.string   "major"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "pref_first_name"
    t.string   "title"
    t.string   "suffix"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "address_line2"
    t.string   "address_line1"
    t.integer  "admin"
    t.string   "phone"
    t.boolean  "whiff"
    t.string   "alternate_email"
    t.integer  "tap_year"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
