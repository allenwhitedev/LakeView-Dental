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

ActiveRecord::Schema.define(version: 20150101213659) do

  create_table "dental_histories", force: true do |t|
    t.integer  "patient_id"
    t.string   "reason_for_visit"
    t.string   "former_dentist"
    t.string   "former_dentist_city_or_state"
    t.date     "last_dental_visit"
    t.date     "last_dental_xrays"
    t.boolean  "bad_breath"
    t.boolean  "bleeding_gums"
    t.boolean  "blisters_on_lips_or_mouth"
    t.boolean  "burning_sensation_on_tongue"
    t.boolean  "chew_on_one_side_of_mouth"
    t.boolean  "cigarette_pipe_or_cigar_smoking"
    t.boolean  "clicking_or_popping_jaw"
    t.boolean  "dry_mouth"
    t.boolean  "fingernail_biting"
    t.boolean  "food_collection_between_teeth"
    t.boolean  "foreign_objects"
    t.boolean  "grinding_teeth"
    t.boolean  "gums_swollen_or_tender"
    t.boolean  "jaw_pain_or_tiredness"
    t.boolean  "lip_or_cheek_biting"
    t.boolean  "loose_teeth_or_broken_fillings"
    t.boolean  "mouth_breathing"
    t.boolean  "mouth_pain_brushing"
    t.boolean  "orthodontic_treatment"
    t.boolean  "pain_around_ear"
    t.boolean  "periodontal_treatment"
    t.boolean  "sensitivity_to_cold"
    t.boolean  "sensitivity_to_heat"
    t.boolean  "sensitivity_to_sweets"
    t.boolean  "sensitivity_when_biting"
    t.boolean  "sores_or_growths_in_mouth"
    t.string   "flossing_frequency"
    t.string   "brushing_frequency"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "dental_histories", ["patient_id"], name: "index_dental_histories_on_patient_id", unique: true

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

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
