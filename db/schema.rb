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

ActiveRecord::Schema.define(version: 20150404130313) do

  create_table "grills", force: :cascade do |t|
    t.string   "ans1"
    t.string   "ans2"
    t.string   "ans3"
    t.integer  "question_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "grills", ["question_id"], name: "index_grills_on_question_id"

  create_table "questions", force: :cascade do |t|
    t.string   "q1"
    t.string   "q1a"
    t.string   "q1b"
    t.string   "q1c"
    t.string   "q1d"
    t.string   "q1correct"
    t.string   "q2"
    t.string   "q2a"
    t.string   "q2b"
    t.string   "q2c"
    t.string   "q2d"
    t.string   "q2correct"
    t.string   "q3"
    t.string   "q3a"
    t.string   "q3b"
    t.string   "q3c"
    t.string   "q3d"
    t.string   "q3correct"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "results", force: :cascade do |t|
    t.integer  "score"
    t.integer  "grill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "results", ["grill_id"], name: "index_results_on_grill_id"

end
