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

ActiveRecord::Schema.define(version: 20160625190044) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "document_user_case_infos", force: :cascade do |t|
    t.integer  "user_document_id"
    t.integer  "user_case_info_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "document_user_case_infos", ["user_case_info_id"], name: "index_document_user_case_infos_on_user_case_info_id", using: :btree
  add_index "document_user_case_infos", ["user_document_id"], name: "index_document_user_case_infos_on_user_document_id", using: :btree

  create_table "document_user_informations", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "document_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "user_document_id"
    t.integer  "user_information_id"
  end

  add_index "document_user_informations", ["document_id"], name: "index_document_user_informations_on_document_id", using: :btree
  add_index "document_user_informations", ["user_document_id"], name: "index_document_user_informations_on_user_document_id", using: :btree
  add_index "document_user_informations", ["user_id"], name: "index_document_user_informations_on_user_id", using: :btree
  add_index "document_user_informations", ["user_information_id"], name: "index_document_user_informations_on_user_information_id", using: :btree

  create_table "documents", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "form"
  end

  create_table "map_user_document_user_infos", force: :cascade do |t|
    t.integer "user_document_id"
    t.integer "user_information_id"
  end

  add_index "map_user_document_user_infos", ["user_document_id"], name: "index_map_user_document_user_infos_on_user_document_id", using: :btree
  add_index "map_user_document_user_infos", ["user_information_id"], name: "index_map_user_document_user_infos_on_user_information_id", using: :btree

  create_table "prototypes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "static_contents", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_arguments", force: :cascade do |t|
    t.integer  "document_id"
    t.string   "overall_reason"
    t.string   "user_change_details"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "user_id"
    t.integer  "user_document_id"
  end

  add_index "user_arguments", ["document_id"], name: "index_user_arguments_on_document_id", using: :btree
  add_index "user_arguments", ["user_document_id"], name: "index_user_arguments_on_user_document_id", using: :btree
  add_index "user_arguments", ["user_id"], name: "index_user_arguments_on_user_id", using: :btree

  create_table "user_case_infos", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "docket_id"
    t.text     "charged_with"
    t.text     "charge_type"
    t.text     "police_description"
    t.text     "case_conclusion"
    t.text     "is_case_pending"
    t.datetime "case_end_date"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "user_document_id"
  end

  add_index "user_case_infos", ["user_document_id"], name: "index_user_case_infos_on_user_document_id", using: :btree
  add_index "user_case_infos", ["user_id"], name: "index_user_case_infos_on_user_id", using: :btree

  create_table "user_documents", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "document_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "user_documents", ["document_id"], name: "index_user_documents_on_document_id", using: :btree
  add_index "user_documents", ["user_id"], name: "index_user_documents_on_user_id", using: :btree

  create_table "user_informations", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "pd_id"
    t.text     "first_name"
    t.text     "last_name"
    t.text     "middle_name"
    t.text     "preefix_suffix"
    t.text     "title"
    t.text     "address_line_1"
    t.text     "address_line2"
    t.text     "city"
    t.text     "state"
    t.text     "phone_number"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "user_informations", ["user_id"], name: "index_user_informations_on_user_id", using: :btree

  create_table "user_references", force: :cascade do |t|
    t.integer  "document_id"
    t.text     "attachment"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "user_id"
    t.integer  "user_document_id"
  end

  add_index "user_references", ["document_id"], name: "index_user_references_on_document_id", using: :btree
  add_index "user_references", ["user_document_id"], name: "index_user_references_on_user_document_id", using: :btree
  add_index "user_references", ["user_id"], name: "index_user_references_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "provider"
    t.string   "uid"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "views", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "views", ["email"], name: "index_views_on_email", unique: true, using: :btree
  add_index "views", ["reset_password_token"], name: "index_views_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "document_user_case_infos", "user_case_infos"
  add_foreign_key "document_user_case_infos", "user_documents"
  add_foreign_key "document_user_informations", "documents"
  add_foreign_key "document_user_informations", "user_documents"
  add_foreign_key "document_user_informations", "user_informations"
  add_foreign_key "document_user_informations", "users"
  add_foreign_key "map_user_document_user_infos", "user_documents"
  add_foreign_key "map_user_document_user_infos", "user_informations"
  add_foreign_key "user_arguments", "documents"
  add_foreign_key "user_arguments", "user_documents"
  add_foreign_key "user_arguments", "users"
  add_foreign_key "user_case_infos", "user_documents"
  add_foreign_key "user_case_infos", "users"
  add_foreign_key "user_documents", "documents"
  add_foreign_key "user_documents", "users"
  add_foreign_key "user_informations", "users"
  add_foreign_key "user_references", "documents"
  add_foreign_key "user_references", "user_documents"
  add_foreign_key "user_references", "users"
end
