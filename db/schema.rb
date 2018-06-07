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

ActiveRecord::Schema.define(version: 2018_06_04_173721) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "movements", force: :cascade do |t|
    t.string "movement_name"
    t.text "movement_description"
    t.string "url"
    t.string "bodypart"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_histories", force: :cascade do |t|
    t.integer "set"
    t.integer "rep"
    t.float "weight"
    t.bigint "movement_id"
    t.bigint "workout_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movement_id"], name: "index_user_histories_on_movement_id"
    t.index ["user_id"], name: "index_user_histories_on_user_id"
    t.index ["workout_id"], name: "index_user_histories_on_workout_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workoutdetails", force: :cascade do |t|
    t.integer "rec_set"
    t.integer "rec_rep"
    t.string "rec_duration"
    t.bigint "movement_id"
    t.bigint "workout_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movement_id"], name: "index_workoutdetails_on_movement_id"
    t.index ["workout_id"], name: "index_workoutdetails_on_workout_id"
  end

  create_table "workouts", force: :cascade do |t|
    t.string "workout_name"
    t.string "difficulty"
    t.string "duration"
    t.date "workout_date"
    t.string "location"
    t.string "instructor"
    t.string "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "user_histories", "movements"
  add_foreign_key "user_histories", "users"
  add_foreign_key "user_histories", "workouts"
  add_foreign_key "workoutdetails", "movements"
  add_foreign_key "workoutdetails", "workouts"
end
