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

ActiveRecord::Schema.define(version: 20141209191706) do

  create_table "dental_insurances", force: true do |t|
    t.integer  "patient_id"
    t.string   "account_owner"
    t.string   "account_owner_to_patient_relationship"
    t.string   "account_owner_insurance_company"
    t.integer  "account_owner_group_number"
    t.boolean  "account_owner_additional_insurance"
    t.string   "subscriber_name"
    t.date     "subscriber_birthdate"
    t.integer  "subscriber_ss"
    t.string   "subsriber_relationship_to_patient"
    t.string   "subscriber_insurance_company"
    t.integer  "subscriber_group_number"
    t.string   "name_of_insurance_company"
    t.string   "doctor_name"
    t.string   "patient_signature"
    t.string   "printed_signature"
    t.date     "signature_date"
    t.string   "signer_relationship_to_patient"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patient_infos", force: true do |t|
    t.integer  "patient_id"
    t.string   "address"
    t.string   "email"
    t.string   "city"
    t.string   "state"
    t.integer  "zipcode"
    t.boolean  "sex"
    t.date     "birthdate"
    t.string   "relationship_status"
    t.string   "employer_or_school"
    t.string   "occupation"
    t.string   "employer_or_school_address"
    t.string   "employer_or_school_phone"
    t.string   "spouse_name"
    t.date     "spouse_birthdate"
    t.integer  "spouse_ss"
    t.string   "spouse_employer"
    t.string   "referrer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "patient_infos", ["patient_id"], name: "index_patient_infos_on_patient_id", unique: true

  create_table "patients", force: true do |t|
    t.string   "first_name"
    t.string   "middle_initial"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personals", force: true do |t|
    t.string   "address"
    t.string   "email"
    t.string   "city"
    t.string   "state"
    t.integer  "zipcode"
    t.boolean  "sex"
    t.date     "birthdate"
    t.string   "relationship_status"
    t.string   "employer_or_school"
    t.string   "occupation"
    t.string   "employer_or_school_address"
    t.string   "employer_or_school_phone"
    t.string   "spouse_name"
    t.date     "spouse_birthdate"
    t.integer  "spouse_ss"
    t.string   "spouse_employer"
    t.string   "referrer"
    t.integer  "patient_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "personals", ["patient_id", "created_at"], name: "index_personals_on_patient_id_and_created_at"
  add_index "personals", ["patient_id"], name: "index_personals_on_patient_id"

end
