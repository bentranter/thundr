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

ActiveRecord::Schema.define(version: 20131206015003) do

  create_table "carts", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "courses", force: true do |t|
    t.string   "department"
    t.string   "course_code"
    t.string   "name"
    t.string   "prerequisite"
    t.text     "description"
    t.string   "method"
    t.float    "credits"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses_carts", id: false, force: true do |t|
    t.integer "course_id"
    t.integer "cart_id"
  end

  create_table "courses_schedules", id: false, force: true do |t|
    t.integer "course_id"
    t.integer "schedule_id"
  end

  create_table "delayed_jobs", force: true do |t|
    t.integer  "priority",   default: 0
    t.integer  "attempts",   default: 0
    t.text     "handler"
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority"

  create_table "departments", force: true do |t|
    t.string "deptCode"
    t.string "deptName"
  end

  create_table "klasses", force: true do |t|
    t.integer  "section_id"
    t.string   "day"
    t.string   "start_time"
    t.string   "end_time"
    t.string   "campus"
    t.string   "room"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "progresses", force: true do |t|
    t.integer "percent"
    t.text    "description"
  end

  create_table "remember_tokens", force: true do |t|
    t.string  "token"
    t.integer "user_id"
    t.date    "accessed_at"
  end

  create_table "schedules", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id",    null: false
  end

  create_table "sections", force: true do |t|
    t.integer  "course_id"
    t.string   "department"
    t.string   "course_code"
    t.string   "section_code"
    t.string   "instructor"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "season"
    t.string   "link"
    t.integer  "synonym"
    t.string   "method"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",                  default: false
    t.string   "password_digest"
    t.string   "remember_token"
    t.string   "username"
  end

  create_table "schedules_sections", id: false do |t|
    t.integer :section_id
    t.integer :schedule_id
  end


  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
