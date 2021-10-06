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

ActiveRecord::Schema.define(version: 2021_10_06_000330) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accreditations", force: :cascade do |t|
    t.string "accreditation_title", null: false
    t.string "modality", null: false
    t.string "study_level", null: false
    t.bigint "program_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["program_id"], name: "index_accreditations_on_program_id"
  end

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "middle_name"
    t.string "role", default: "admin", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
    t.index ["role"], name: "index_admin_users_on_role"
  end

  create_table "admissions", force: :cascade do |t|
    t.string "admission_name", null: false
    t.text "how_to_apply", null: false
    t.text "required_document", null: false
    t.text "payment_process", null: false
    t.text "useful_information"
    t.string "study_level", null: false
    t.string "modality", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "almunis", force: :cascade do |t|
    t.string "fullname", null: false
    t.string "sex", null: false
    t.string "phone_number", null: false
    t.string "modality"
    t.string "study_level"
    t.datetime "graduation_date"
    t.string "prorgam"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "career_opportunities", force: :cascade do |t|
    t.bigint "program_id"
    t.string "title", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["program_id"], name: "index_career_opportunities_on_program_id"
  end

  create_table "colleges", force: :cascade do |t|
    t.string "college_name", null: false
    t.text "background"
    t.text "mission"
    t.text "vision"
    t.text "overview"
    t.datetime "establishment_date"
    t.integer "student_enrolled"
    t.integer "distance_center"
    t.integer "number_of_prorgam"
    t.text "mandate"
    t.text "history"
    t.string "headquarter_address"
    t.string "alternative_address"
    t.string "sub_city"
    t.string "state"
    t.string "region"
    t.string "zone"
    t.string "worda"
    t.string "city"
    t.string "country"
    t.string "phone_number"
    t.string "alternative_phone_number"
    t.string "email"
    t.string "facebook_handle"
    t.string "twitter_handle"
    t.string "instagram_handle"
    t.string "map_embed"
    t.string "created_by"
    t.string "last_updated_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "marketing_sections", force: :cascade do |t|
    t.string "headline_title"
    t.string "description"
    t.string "page_to_display"
    t.string "action"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "news", force: :cascade do |t|
    t.string "news_title", null: false
    t.string "overview", null: false
    t.text "body"
    t.boolean "publish", default: false
    t.string "published_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "programs", force: :cascade do |t|
    t.string "program_name", null: false
    t.string "study_level", null: false
    t.string "modality", null: false
    t.text "overview"
    t.text "program_description"
    t.integer "program_duration"
    t.decimal "total_tuition", default: "0.0"
    t.decimal "monthly_tuition", default: "0.0"
    t.string "created_by"
    t.string "last_updated_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "section_headlines", force: :cascade do |t|
    t.bigint "college_id"
    t.string "gallery_headline"
    t.string "service_headline"
    t.string "accreditation"
    t.string "testimonial_headline"
    t.string "home_page_video_embed"
    t.string "home_page_carousel_headline"
    t.string "home_page_carousel_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["college_id"], name: "index_section_headlines_on_college_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "service_name", null: false
    t.string "service_overview", null: false
    t.text "details", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "staffs", force: :cascade do |t|
    t.string "fullname", null: false
    t.string "message"
    t.string "job_title", null: false
    t.string "office_name"
    t.text "major_responsibilities"
    t.text "offices_that_answerable_to"
    t.string "office_address"
    t.string "office_phone_number"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "visitor_comments", force: :cascade do |t|
    t.string "fullname", null: false
    t.string "category", null: false
    t.string "subject", null: false
    t.text "message", null: false
    t.string "email"
    t.string "phone_number"
    t.boolean "display_on_home_page", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
