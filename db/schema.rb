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

ActiveRecord::Schema.define(version: 20160825073125) do

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
    t.string   "previouscompany"
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
    t.string   "status"
    t.string   "previouscompany"
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

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer  "priority",         default: 0, null: false
    t.integer  "attempts",         default: 0, null: false
    t.text     "handler",                      null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "progress_stage"
    t.integer  "progress_current", default: 0
    t.integer  "progress_max",     default: 0
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority"

  create_table "interviewerfeedbacks", force: :cascade do |t|
    t.string   "interviewername"
    t.string   "candidatename"
    t.string   "status"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "skills"
    t.string   "attachedfile_file_name"
    t.string   "attachedfile_content_type"
    t.integer  "attachedfile_file_size"
    t.datetime "attachedfile_updated_at"
    t.integer  "relevanceexperience"
    t.text     "relevanceexperiencecomment"
    t.integer  "personality"
    t.text     "personalitycomment"
    t.integer  "communication"
    t.text     "communicationcomment"
    t.integer  "technicalskills"
    t.text     "technicalskillscomment"
    t.integer  "analyticalskills"
    t.text     "analyticalskillscomment"
    t.integer  "jobknowledge"
    t.text     "jobknowledgecomment"
    t.integer  "timemanagement"
    t.text     "timemanagementcomment"
    t.integer  "commitementtask"
    t.text     "commitementtaskcomment"
    t.integer  "leadership"
    t.text     "leadershipcomment"
    t.integer  "teamwork"
    t.text     "teamworkcomment"
    t.integer  "goalsettings"
    t.text     "goalsettingscomment"
    t.integer  "creativity"
    t.text     "creativitycomment"
    t.integer  "flexibility"
    t.text     "flexibilitycomment"
    t.integer  "assertiveness"
    t.text     "assertivenesscomment"
    t.string   "scheduletime"
    t.string   "scheduledate"
    t.float    "overallassesment"
    t.string   "candidatemail"
    t.text     "addcomment"
    t.string   "previouscompany"
  end

  create_table "interviewers", force: :cascade do |t|
    t.string   "interviewername"
    t.string   "interviewercompany"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "companyemail"
    t.string   "skills"
  end

  create_table "skillsets", force: :cascade do |t|
    t.string   "skills"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
