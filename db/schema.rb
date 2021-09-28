# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_09_27_235557) do

  create_table "client_applications", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.string "support_url"
    t.string "callback_url"
    t.string "key", limit: 40
    t.string "secret", limit: 40
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["key"], name: "index_client_applications_on_key", unique: true
  end

  create_table "oauth_nonces", force: :cascade do |t|
    t.string "nonce"
    t.integer "timestamp"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["nonce", "timestamp"], name: "index_oauth_nonces_on_nonce_and_timestamp", unique: true
  end

  create_table "oauth_tokens", force: :cascade do |t|
    t.integer "user_id"
    t.string "type", limit: 20
    t.integer "client_application_id"
    t.string "token", limit: 40
    t.string "secret", limit: 40
    t.string "callback_url"
    t.string "verifier", limit: 20
    t.string "scope"
    t.datetime "authorized_at"
    t.datetime "invalidated_at"
    t.datetime "expires_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["token"], name: "index_oauth_tokens_on_token", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.integer "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "sendinformationstatus"
  end

end
