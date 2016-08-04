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

ActiveRecord::Schema.define(version: 20160804111044) do

  create_table "calenders", force: :cascade do |t|
    t.date     "dates"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "times"
  end

  create_table "candidatedetails", force: :cascade do |t|
    t.string   "candidatename"
    t.string   "candidateemail"
    t.decimal  "candidatecontact"
    t.string   "yoe"
    t.string   "skills"
    t.text     "jobdescription"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "attachedfile_file_name"
    t.string   "attachedfile_content_type"
    t.integer  "attachedfile_file_size"
    t.datetime "attachedfile_updated_at"
    t.string   "status"
    t.string   "jobtitle"
  end

  create_table "candidateprofiles", force: :cascade do |t|
    t.string   "candidatename"
    t.string   "candidateemail"
    t.string   "skills"
    t.text     "YOE"
    t.string   "interviewername"
    t.string   "intervieweremail"
    t.string   "scheduledate"
    t.string   "scheduletime"
    t.text     "jobdescription"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.decimal  "candidatecontact"
    t.string   "jobtitle"
    t.integer  "candidatedetail_id"
  end

  add_index "candidateprofiles", ["candidatedetail_id"], name: "index_candidateprofiles_on_candidatedetail_id"

  create_table "companies", force: :cascade do |t|
    t.string   "companyname"
    t.text     "companyaddress"
    t.string   "contactperson"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "companyemail"
    t.string   "username"
    t.string   "password"
    t.string   "password_confirmation"
    t.decimal  "contactnumber"
  end

  create_table "interviewerfeedbacks", force: :cascade do |t|
    t.string   "interviewername"
    t.string   "candidatename"
    t.string   "status"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "skills"
    t.string   "attachedfile_file_name"
    t.string   "attachedfile_content_type"
    t.integer  "attachedfile_file_size"
    t.datetime "attachedfile_updated_at"
    t.integer  "relevanceexperience"
    t.integer  "personality"
    t.integer  "communication"
    t.integer  "technicalskills"
    t.integer  "analyticalskills"
    t.integer  "jobknowledge"
    t.integer  "timemanagement"
    t.integer  "commitementtask"
    t.integer  "leadership"
    t.integer  "teamwork"
    t.integer  "goalsettings"
    t.integer  "creativity"
    t.integer  "flexibility"
    t.integer  "assertiveness"
    t.string   "scheduletime"
    t.string   "scheduledate"
    t.float    "overallassesment"
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

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
