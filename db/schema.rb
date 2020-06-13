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

ActiveRecord::Schema.define(version: 2020_06_12_132657) do

  create_table "medication_histories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "subjective"
    t.text "objective"
    t.text "assessment"
    t.text "education_plan"
    t.text "care_plan"
    t.text "observational_plan"
    t.text "inquiry"
    t.text "free_comment"
    t.text "request_items"
    t.text "change_condition"
    t.text "medication_status"
    t.text "side_effects"
    t.text "allergies"
    t.text "concomitant_drug"
    t.text "otc"
    t.text "complications"
    t.text "medical_history"
    t.text "constitution"
    t.text "luxury_goods"
    t.text "pregnancy_breastfeeding"
    t.text "height_bodywight"
    t.text "background"
    t.text "medicine_notebook"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patient_users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "patient_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_patient_users_on_patient_id"
    t.index ["user_id"], name: "index_patient_users_on_user_id"
  end

  create_table "patients", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "furigana", null: false
    t.date "birthday", null: false
    t.string "sex", null: false
    t.integer "receipt_number", null: false
    t.integer "insurance_number", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["receipt_number"], name: "index_patients_on_receipt_number", unique: true
  end

  create_table "pharmacists", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.integer "employee_number", null: false
    t.string "pharmacy_name", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_pharmacists_on_email", unique: true
    t.index ["employee_number"], name: "index_pharmacists_on_employee_number", unique: true
    t.index ["reset_password_token"], name: "index_pharmacists_on_reset_password_token", unique: true
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.integer "employee_number", null: false
    t.string "pharmacy_name", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["employee_number"], name: "index_users_on_employee_number", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "patient_users", "patients"
  add_foreign_key "patient_users", "users"
end
