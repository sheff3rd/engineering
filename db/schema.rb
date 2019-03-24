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

ActiveRecord::Schema.define(version: 20190607125557) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "confirmed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bookings", force: :cascade do |t|
    t.bigint "owner_id"
    t.integer "state"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "studio_id"
    t.index ["owner_id"], name: "index_bookings_on_owner_id"
    t.index ["studio_id"], name: "index_bookings_on_studio_id"
  end

  create_table "listings", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "account_id"
    t.index ["account_id"], name: "index_listings_on_account_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "address"
    t.string "building"
    t.float "latitude"
    t.float "longitude"
    t.integer "postal_code"
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "account_id"
    t.bigint "studio_id"
    t.index ["account_id"], name: "index_locations_on_account_id"
    t.index ["studio_id"], name: "index_locations_on_studio_id"
  end

  create_table "messages", force: :cascade do |t|
    t.integer "message_type"
    t.string "from"
    t.string "to"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "account_id"
    t.index ["account_id"], name: "index_messages_on_account_id"
  end

  create_table "payment_details", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "birthday"
    t.string "sort_code"
    t.string "account_number"
    t.string "routing_number"
    t.string "iban"
    t.string "bsb"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "account_id"
    t.index ["account_id"], name: "index_payment_details_on_account_id"
  end

  create_table "photos", force: :cascade do |t|
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "studio_id"
    t.index ["studio_id"], name: "index_photos_on_studio_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "avatar"
    t.text "bio"
    t.string "website_url"
    t.string "twitter_handle"
    t.string "instagram_handle"
    t.string "streaming_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "account_id"
    t.index ["account_id"], name: "index_profiles_on_account_id"
  end

  create_table "studios", force: :cascade do |t|
    t.string "name"
    t.text "details"
    t.text "minimum_booking"
    t.integer "studio_type", array: true
    t.text "studio_hours"
    t.text "audio_samples"
    t.text "amenities"
    t.text "equipment"
    t.text "rules"
    t.integer "price"
    t.boolean "audio_engineer_included"
    t.boolean "verified"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "account_id"
    t.index ["account_id"], name: "index_studios_on_account_id"
  end

end
