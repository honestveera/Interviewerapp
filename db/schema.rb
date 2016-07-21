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

ActiveRecord::Schema.define(version: 20160720125500) do

  create_table "calenders", force: :cascade do |t|
    t.date     "dates"
    t.time     "times"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "candidateprofiles", force: :cascade do |t|
    t.string   "candidatename"
    t.string   "candidateemail"
    t.integer  "candidatecontact"
    t.string   "skills"
    t.text     "YOE"
    t.string   "interviewername"
    t.string   "intervieweremail"
    t.string   "scheduledate"
    t.string   "scheduletime"
    t.text     "jobdescription"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "companyname"
    t.string   "companyemail"
  end

  create_table "candidates", force: :cascade do |t|
    t.string   "candidatename"
    t.string   "candidateemail"
    t.integer  "candidatecontact"
    t.string   "skills"
    t.text     "YOE"
    t.string   "interviewername"
    t.string   "intervieweremail"
    t.string   "scheduledate"
    t.string   "scheduletime"
    t.text     "jobdescription"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.date     "DOB"
  end

  create_table "companies", force: :cascade do |t|
    t.string   "companyname"
    t.text     "companyaddress"
    t.string   "contactperson"
    t.integer  "contactnumber"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "companyemail"
  end

  create_table "interviewerfeedbacks", force: :cascade do |t|
    t.string   "interviewername"
    t.string   "candidatename"
    t.text     "feedback"
    t.string   "status"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "interviewers", force: :cascade do |t|
    t.string   "interviewername"
    t.string   "interviewercompany"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "companyemail"
    t.string   "skills"
  end

  create_table "interviewrs", force: :cascade do |t|
    t.string   "interviwername"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "scheduletimes", force: :cascade do |t|
    t.time     "scheduletime"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "skillsets", force: :cascade do |t|
    t.string   "skills"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
