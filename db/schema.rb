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

ActiveRecord::Schema.define(version: 20160325111256) do

  create_table "quiz_scores", force: :cascade do |t|
    t.boolean  "correct"
    t.integer  "slide_id"
    t.integer  "quiz_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "quiz_scores", ["quiz_id"], name: "index_quiz_scores_on_quiz_id"
  add_index "quiz_scores", ["slide_id"], name: "index_quiz_scores_on_slide_id"

  create_table "quizzes", force: :cascade do |t|
    t.string   "student"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "score"
  end

  add_index "quizzes", ["user_id", "created_at"], name: "index_quizzes_on_user_id_and_created_at"
  add_index "quizzes", ["user_id"], name: "index_quizzes_on_user_id"

  create_table "slides", force: :cascade do |t|
    t.string   "pic"
    t.string   "word"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.integer  "session_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin",           default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
