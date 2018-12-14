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

ActiveRecord::Schema.define(version: 2018_12_14_002220) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "goals", force: :cascade do |t|
    t.string "goal_name"
    t.string "due_date"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "journal_id"
  end

  create_table "journals", force: :cascade do |t|
    t.string "entry_type"
    t.string "entry_body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "entry_title"
    t.string "user_id"
    t.string "image_url"
  end

  create_table "reflections", force: :cascade do |t|
    t.string "reflection_type"
    t.string "reflection_title"
    t.string "reflection_body"
    t.string "reflection_entry_date"
    t.string "journal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sub_goals", force: :cascade do |t|
    t.string "sub_goal_name"
    t.string "sub_goal_due_date"
    t.string "sub_goal_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "goal_id"
    t.string "sub_goal_description"
  end

  create_table "todos", force: :cascade do |t|
    t.string "task_name"
    t.string "task_description"
    t.string "task_checkbox_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "journal_id"
  end

  create_table "track_habits", force: :cascade do |t|
    t.string "habit_name"
    t.string "habit_repeat_frequency"
    t.string "habit_completion_status"
    t.string "habit_time"
    t.string "journal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end
