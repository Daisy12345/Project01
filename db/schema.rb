
ActiveRecord::Schema.define(version: 20151101092637) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string   "account_number"
    t.string   "balance"
    t.integer  "branch_id"
    t.integer  "customer_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "accounts", ["branch_id"], name: "index_accounts_on_branch_id", using: :btree
  add_index "accounts", ["customer_id"], name: "index_accounts_on_customer_id", using: :btree

  create_table "branches", force: :cascade do |t|
    t.string   "branch_name"
    t.string   "branch_city"
    t.integer  "assets"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "customer_name"
    t.string   "customer_street"
    t.string   "customer_city"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "password_digest"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "accounts", "branches"
  add_foreign_key "accounts", "customers"
end
