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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110914060023) do

  create_table "cvs", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "disciplines", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "cv_id"
  end

  create_table "highlights", :force => true do |t|
    t.integer  "job_id",      :null => false
    t.integer  "skill_id",    :null => false
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "cv_id"
  end

  add_index "highlights", ["job_id"], :name => "index_highlights_on_job_id"
  add_index "highlights", ["skill_id"], :name => "index_highlights_on_skill_id"

  create_table "job_skills", :force => true do |t|
    t.integer  "job_id"
    t.integer  "skill_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "cv_id"
  end

  add_index "job_skills", ["job_id"], :name => "index_job_skills_on_job_id"
  add_index "job_skills", ["skill_id"], :name => "index_job_skills_on_skill_id"

  create_table "job_softwares", :force => true do |t|
    t.integer  "job_id"
    t.integer  "software_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "cv_id"
  end

  add_index "job_softwares", ["job_id"], :name => "index_job_softwares_on_job_id"
  add_index "job_softwares", ["software_id"], :name => "index_job_softwares_on_software_id"

  create_table "job_years", :force => true do |t|
    t.integer  "job_id"
    t.integer  "year_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "cv_id"
  end

  add_index "job_years", ["job_id"], :name => "index_job_years_on_job_id"
  add_index "job_years", ["year_id"], :name => "index_job_years_on_year_id"

  create_table "jobs", :force => true do |t|
    t.string   "title"
    t.string   "employer"
    t.string   "project"
    t.string   "url"
    t.integer  "start_month"
    t.integer  "end_month"
    t.text     "short_desc"
    t.text     "long_desc"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "start_year"
    t.integer  "end_year"
    t.string   "status"
    t.integer  "cv_id"
  end

  add_index "jobs", ["end_month"], :name => "index_jobs_on_end_month"
  add_index "jobs", ["end_year"], :name => "index_jobs_on_end_year"
  add_index "jobs", ["start_month"], :name => "index_jobs_on_start_month"
  add_index "jobs", ["start_year"], :name => "index_jobs_on_start_year"

  create_table "skills", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "abbreviation"
    t.integer  "discipline_id"
    t.integer  "rank"
    t.string   "slug"
    t.integer  "cv_id"
  end

  add_index "skills", ["discipline_id"], :name => "index_skills_on_discipline_id"

  create_table "softwares", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
    t.integer  "rank"
    t.integer  "cv_id"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "years", :force => true do |t|
    t.integer  "value"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "cv_id"
  end

  add_index "years", ["value"], :name => "index_years_on_value", :unique => true

end
