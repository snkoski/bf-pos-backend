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

ActiveRecord::Schema.define(version: 2018_07_24_192131) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.integer "table_id"
    t.integer "seat_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.decimal "price"
    t.integer "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "proportions", force: :cascade do |t|
    t.string "amount"
    t.integer "recipe_id"
    t.integer "ingredient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.text "instructions"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "minimum_time"
  end

  create_table "reservations", force: :cascade do |t|
    t.string "guest_name"
    t.integer "number_of_guests"
    t.datetime "date"
    t.datetime "time"
    t.text "special_requests"
    t.integer "table_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "cancelled"
  end

  create_table "static_tables", force: :cascade do |t|
    t.boolean "occupied"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tables", force: :cascade do |t|
    t.integer "user_id"
    t.boolean "occupied"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "table_number"
  end

  create_table "timesheets", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "clock_in"
    t.datetime "clock_out"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.boolean "foh"
    t.boolean "boh"
    t.integer "admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "waitlists", force: :cascade do |t|
    t.string "guest_name"
    t.string "phone_number"
    t.integer "number_of_guests"
    t.datetime "date"
    t.datetime "start_waitlist"
    t.datetime "end_waitlist"
    t.boolean "cancelled"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
