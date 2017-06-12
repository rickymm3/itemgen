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

ActiveRecord::Schema.define(version: 20160411195505) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "common_items", force: :cascade do |t|
    t.string   "name"
    t.integer  "min"
    t.integer  "max"
    t.integer  "item_tier_id"
    t.integer  "stat_type_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "item_slot_id"
  end

  add_index "common_items", ["item_slot_id"], name: "index_common_items_on_item_slot_id", using: :btree
  add_index "common_items", ["item_tier_id"], name: "index_common_items_on_item_tier_id", using: :btree
  add_index "common_items", ["stat_type_id"], name: "index_common_items_on_stat_type_id", using: :btree

  create_table "fixed_item_stats", force: :cascade do |t|
    t.integer  "magic_item_name_id"
    t.integer  "min"
    t.integer  "max"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "stat_type_id"
  end

  add_index "fixed_item_stats", ["magic_item_name_id"], name: "index_fixed_item_stats_on_magic_item_name_id", using: :btree
  add_index "fixed_item_stats", ["stat_type_id"], name: "index_fixed_item_stats_on_stat_type_id", using: :btree

  create_table "item_rarities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "item_slots", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "item_tiers", force: :cascade do |t|
    t.string   "name"
    t.integer  "multiplier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "magic_item_names", force: :cascade do |t|
    t.string   "name"
    t.boolean  "affix"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "item_rarity_id"
    t.integer  "item_tier_id"
  end

  add_index "magic_item_names", ["item_rarity_id"], name: "index_magic_item_names_on_item_rarity_id", using: :btree
  add_index "magic_item_names", ["item_tier_id"], name: "index_magic_item_names_on_item_tier_id", using: :btree

  create_table "player_item_stats", force: :cascade do |t|
    t.integer  "stat_value"
    t.integer  "player_item_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "stat_type_id"
  end

  add_index "player_item_stats", ["player_item_id"], name: "index_player_item_stats_on_player_item_id", using: :btree
  add_index "player_item_stats", ["stat_type_id"], name: "index_player_item_stats_on_stat_type_id", using: :btree

  create_table "player_items", force: :cascade do |t|
    t.string   "full_name"
    t.integer  "item_rarity_id"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "stat_type_id"
    t.integer  "stat_value"
    t.integer  "item_slot_id"
  end

  add_index "player_items", ["item_rarity_id"], name: "index_player_items_on_item_rarity_id", using: :btree
  add_index "player_items", ["item_slot_id"], name: "index_player_items_on_item_slot_id", using: :btree
  add_index "player_items", ["stat_type_id"], name: "index_player_items_on_stat_type_id", using: :btree
  add_index "player_items", ["user_id"], name: "index_player_items_on_user_id", using: :btree

  create_table "stat_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "common_items", "item_slots"
  add_foreign_key "common_items", "item_tiers"
  add_foreign_key "common_items", "stat_types"
  add_foreign_key "fixed_item_stats", "magic_item_names"
  add_foreign_key "fixed_item_stats", "stat_types"
  add_foreign_key "magic_item_names", "item_rarities"
  add_foreign_key "magic_item_names", "item_tiers"
  add_foreign_key "player_item_stats", "player_items"
  add_foreign_key "player_item_stats", "stat_types"
  add_foreign_key "player_items", "item_rarities"
  add_foreign_key "player_items", "item_slots"
  add_foreign_key "player_items", "stat_types"
  add_foreign_key "player_items", "users"
end
