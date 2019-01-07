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

ActiveRecord::Schema.define(version: 2019_01_06_031138) do

  create_table "families", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "family_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "family_email", default: "", null: false
  end

  create_table "family_users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "family_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "family_approved", default: false
    t.boolean "family_administrator", default: false
    t.index ["family_id"], name: "index_family_users_on_family_id"
    t.index ["user_id"], name: "index_family_users_on_user_id"
  end

  create_table "report_details", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "report_id"
    t.bigint "report_item_id"
    t.text "report_body", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["report_id"], name: "index_report_details_on_report_id"
    t.index ["report_item_id"], name: "index_report_details_on_report_item_id"
  end

  create_table "report_items", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "report_item_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "report_template_items", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "report_template_id"
    t.bigint "report_item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["report_item_id"], name: "index_report_template_items_on_report_item_id"
    t.index ["report_template_id"], name: "index_report_template_items_on_report_template_id"
  end

  create_table "report_templates", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "report_template_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reports", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_reports_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "user_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "family_users", "families"
  add_foreign_key "family_users", "users"
  add_foreign_key "report_details", "report_items"
  add_foreign_key "report_details", "reports"
  add_foreign_key "report_template_items", "report_items"
  add_foreign_key "report_template_items", "report_templates"
  add_foreign_key "reports", "users"
end
