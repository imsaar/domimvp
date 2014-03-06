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

ActiveRecord::Schema.define(version: 20140302205926) do

  create_table "images", force: true do |t|
    t.integer  "property_id"
    t.integer  "room_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "images", ["property_id"], name: "index_images_on_property_id"
  add_index "images", ["room_id"], name: "index_images_on_room_id"

  create_table "listings", force: true do |t|
    t.boolean  "open_to_student_only"
    t.decimal  "rent_per_month"
    t.datetime "is_available"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "listings", ["user_id"], name: "index_listings_on_user_id"

  create_table "properties", force: true do |t|
    t.integer  "total_bedrooms"
    t.integer  "total_bathrooms"
    t.string   "address"
    t.text     "description"
    t.integer  "commute_to_campus_in_minutes"
    t.integer  "listing_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "properties", ["listing_id"], name: "index_properties_on_listing_id"

  create_table "rooms", force: true do |t|
    t.integer  "property_id"
    t.integer  "tenant_id"
    t.integer  "subletter_id"
    t.integer  "listing_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rooms", ["listing_id"], name: "index_rooms_on_listing_id"
  add_index "rooms", ["property_id"], name: "index_rooms_on_property_id"
  add_index "rooms", ["subletter_id"], name: "index_rooms_on_subletter_id"
  add_index "rooms", ["tenant_id"], name: "index_rooms_on_tenant_id"

  create_table "subletters", force: true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "subletters", ["user_id"], name: "index_subletters_on_user_id"

  create_table "tenants", force: true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tenants", ["user_id"], name: "index_tenants_on_user_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
