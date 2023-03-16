# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_03_15_101632) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "reservation_users", id: false, force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "reservation_id", null: false
    t.index ["reservation_id", "user_id"], name: "index_reservation_users_on_reservation_id_and_user_id"
    t.index ["user_id", "reservation_id"], name: "index_reservation_users_on_user_id_and_reservation_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.string "vehicle"
    t.string "model"
    t.integer "year"
    t.string "color"
    t.string "location"
    t.string "service"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.string "date"
  end

  create_table "services", force: :cascade do |t|
    t.string "service"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
    t.string "engineer"
    t.decimal "price"
    t.integer "labour"
    t.integer "duration"
    t.string "description"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
  end

end
