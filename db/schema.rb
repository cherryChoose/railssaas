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

ActiveRecord::Schema.define(version: 20180612112713) do

  create_table "articles", force: :cascade do |t|
    t.string   "name"
    t.datetime "published_at"
    t.integer  "author_id"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "articles", ["author_id"], name: "index_articles_on_author_id"

  create_table "authors", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

# Could not dump table "comments" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

  create_table "products", force: :cascade do |t|
    t.integer  "category_id"
    t.string   "name"
    t.decimal  "price",        precision: 2, scale: 8
    t.date     "released_on"
    t.integer  "view_count",                           default: 0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "lock_version",                         default: 0, null: false
  end

  add_index "products", ["category_id"], name: "index_products_on_category_id"

  create_table "profiles", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "twitter_name"
    t.string   "github_name"
    t.text     "bio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id"

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "projects", ["user_id"], name: "index_projects_on_user_id"

  create_table "snippets", force: :cascade do |t|
    t.string   "language"
    t.string   "plain_code"
    t.string   "highlighted_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", force: :cascade do |t|
    t.integer  "project_id"
    t.string   "name"
    t.datetime "completed_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tasks", ["project_id"], name: "index_tasks_on_project_id"

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "token"
    t.string   "username"
    t.datetime "subscribed_at"
    t.string   "type"
  end

end
