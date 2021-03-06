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

ActiveRecord::Schema.define(version: 20170509065629) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "conversations", force: :cascade do |t|
    t.integer  "recipient_id"
    t.integer  "sender_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["recipient_id", "sender_id"], name: "index_conversations_on_recipient_id_and_sender_id", unique: true, using: :btree
    t.index ["recipient_id"], name: "index_conversations_on_recipient_id", using: :btree
    t.index ["sender_id"], name: "index_conversations_on_sender_id", using: :btree
  end

  create_table "interests", force: :cascade do |t|
    t.string   "interest_category"
    t.string   "interest"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "interests_users", id: false, force: :cascade do |t|
    t.integer "user_id",     null: false
    t.integer "interest_id", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.text     "body"
    t.integer  "user_id"
    t.integer  "conversation_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["conversation_id"], name: "index_messages_on_conversation_id", using: :btree
    t.index ["user_id"], name: "index_messages_on_user_id", using: :btree
  end

  create_table "relationships", force: :cascade do |t|
    t.integer  "interest_id"
    t.integer  "interested_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["interest_id", "interested_id"], name: "index_relationships_on_interest_id_and_interested_id", unique: true, using: :btree
    t.index ["interest_id"], name: "index_relationships_on_interest_id", using: :btree
    t.index ["interested_id"], name: "index_relationships_on_interested_id", using: :btree
  end

  create_table "travels", force: :cascade do |t|
    t.string   "start_route"
    t.string   "end_route"
    t.string   "timeslot"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "mrt_line"
    t.integer  "user_id"
    t.index ["user_id"], name: "index_travels_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",                     null: false
    t.string   "encrypted_password",     default: "",                     null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,                      null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                              null: false
    t.datetime "updated_at",                                              null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "personal_description"
    t.string   "avatar",                 default: "zpjntmesstnz0lpf176u"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "messages", "conversations"
  add_foreign_key "messages", "users"
  add_foreign_key "travels", "users"
end
