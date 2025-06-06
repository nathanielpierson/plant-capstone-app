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

ActiveRecord::Schema[8.0].define(version: 2025_05_05_192244) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "plant_counts", force: :cascade do |t|
    t.integer "plant_id"
    t.integer "user_id"
    t.integer "count_finished"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "count_growing"
  end

  create_table "plants", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "amount_of_sun"
    t.integer "days_to_water"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_url"
    t.integer "growth_req"
  end

  create_table "schedules", force: :cascade do |t|
    t.integer "plant_id"
    t.integer "user_id"
    t.datetime "last_watered_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "time_changed"
    t.integer "growth_status"
    t.boolean "status"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
