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

ActiveRecord::Schema[7.0].define(version: 2022_10_24_171854) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bootcamps_weeks", force: :cascade do |t|
    t.integer "week"
    t.string "course_slug"
    t.string "lecture_day_slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "github_nickname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers_availabilities", force: :cascade do |t|
    t.integer "lecturer_work_day_count"
    t.integer "lead_ta_work_day_count"
    t.integer "ta_work_day_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "teacher_id"
    t.bigint "bootcamps_week_id", null: false
    t.index ["bootcamps_week_id"], name: "index_teachers_availabilities_on_bootcamps_week_id"
  end

  create_table "teachers_roasters", force: :cascade do |t|
    t.integer "teacher_id"
    t.string "first_name"
    t.string "last_name"
    t.string "github_nickname"
    t.string "city_of_residence"
    t.string "country_of_residence"
    t.string "teacher_profile_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["teacher_id"], name: "index_teachers_roasters_on_teacher_id", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "teachers_availabilities", "bootcamps_weeks"
  add_foreign_key "teachers_availabilities", "teachers_roasters", column: "teacher_id", primary_key: "teacher_id"
end
