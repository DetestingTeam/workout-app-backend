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
    t.string "name"
    t.text "description"
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
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "jti"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["jti"], name: "index_users_on_jti", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "workoutdetails", force: :cascade do |t|
    t.integer "set"
    t.integer "rep"
    t.string "duration"
    t.bigint "movement_id"
    t.bigint "workout_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movement_id"], name: "index_workoutdetails_on_movement_id"
    t.index ["workout_id"], name: "index_workoutdetails_on_workout_id"
  end

  create_table "workouts", force: :cascade do |t|
    t.string "name"
    t.string "difficulty"
    t.string "duration"
    t.date "date"
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
