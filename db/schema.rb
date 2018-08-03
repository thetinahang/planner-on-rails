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

ActiveRecord::Schema.define(version: 20180803130325) do

  create_table "days", force: :cascade do |t|
    t.string "day_day_date"
    t.string "day_grateful_1"
    t.string "day_grateful_2"
    t.string "day_grateful_3"
    t.string "day_excited_1"
    t.string "day_excited_2"
    t.string "day_excited_3"
    t.string "day_affirmation"
    t.string "day_focus"
    t.string "day_exercise"
    t.string "day_priority_1"
    t.string "day_priority_2"
    t.string "day_priority_3"
    t.string "day_priority_4"
    t.string "day_priority_5"
    t.string "day_hour_6"
    t.string "day_hour_7"
    t.string "day_hour_8"
    t.string "day_hour_9"
    t.string "day_hour_10"
    t.string "day_hour_11"
    t.string "day_hour_12"
    t.string "day_hour_13"
    t.string "day_hour_14"
    t.string "day_hour_15"
    t.string "day_hour_16"
    t.string "day_hour_17"
    t.string "day_hour_18"
    t.string "day_hour_19"
    t.string "day_hour_20"
    t.string "day_hour_21"
    t.string "day_task_1"
    t.string "day_task_2"
    t.string "day_task_3"
    t.string "day_task_4"
    t.string "day_task_5"
    t.string "day_task_6"
    t.string "day_task_7"
    t.string "day_task_8"
    t.string "day_task_9"
    t.string "day_task_10"
    t.string "day_notes", limit: 500
    t.string "day_win_1"
    t.string "day_win_2"
    t.string "day_win_3"
    t.string "day_improvement"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hours", force: :cascade do |t|
    t.integer "hour_number"
  end

  create_table "months", force: :cascade do |t|
    t.string "month_name"
    t.string "month_focus"
    t.string "month_habit"
    t.string "month_goal_1"
    t.string "month_goal_2"
    t.string "month_goal_3"
    t.string "month_distraction_1"
    t.string "month_distraction_2"
    t.string "month_distraction_3"
    t.string "month_notes", limit: 500
    t.string "month_win_1"
    t.string "month_win_2"
    t.string "month_win_3"
    t.string "month_insight_1"
    t.string "month_insight_2"
    t.string "month_insight_3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "provider"
    t.string "uid"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["provider"], name: "index_users_on_provider"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid"], name: "index_users_on_uid"
  end

  create_table "weeks", force: :cascade do |t|
    t.string "week_day_date"
    t.string "week_big_win_1"
    t.string "week_big_win_2"
    t.string "week_big_win_3"
    t.string "week_big_win_4"
    t.string "week_big_win_5"
    t.string "week_improvement_1"
    t.string "week_improvement_2"
    t.string "week_personal"
    t.string "week_work"
    t.string "week_family_friends"
    t.string "week_relationship"
    t.string "week_forward_1"
    t.string "week_forward_2"
    t.string "week_forward_3"
    t.string "week_habit_1"
    t.string "week_habit_2"
    t.string "week_learn"
    t.string "week_passion"
    t.string "week_project_1"
    t.string "week_project_2"
    t.string "week_project_3"
    t.string "week_project_4"
    t.string "week_goal_1"
    t.string "week_goal_2"
    t.string "week_goal_3"
    t.string "week_goal_4"
    t.string "week_goal_5"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "week_number"
    t.integer "month_id"
  end

end
