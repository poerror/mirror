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

ActiveRecord::Schema.define(version: 20180322103155) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "projects", force: :cascade do |t|
    t.string "name", null: false
    t.text "description", default: ""
    t.string "color", default: ""
    t.datetime "last_activity_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_projects_on_name", unique: true
  end

  create_table "tasks", force: :cascade do |t|
    t.string "name", null: false
    t.text "description", default: ""
    t.integer "interval", default: 0
    t.float "duration", default: 0.0
    t.integer "priority", default: 0
    t.integer "status", default: 0
    t.boolean "longterm", default: false
    t.bigint "task_id"
    t.datetime "last_activity_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_tasks_on_name", unique: true
    t.index ["task_id"], name: "index_tasks_on_task_id"
  end

  add_foreign_key "tasks", "tasks"
end
