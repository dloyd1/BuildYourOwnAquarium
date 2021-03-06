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

ActiveRecord::Schema.define(version: 2018_10_22_153329) do

  create_table "aquaria", force: :cascade do |t|
    t.integer "gallons"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "decors", force: :cascade do |t|
    t.string "style"
    t.string "aquarium_id"
    t.string "facts"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "equipment", force: :cascade do |t|
    t.string "item"
    t.string "aquarium_id"
    t.string "facts"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fish", force: :cascade do |t|
    t.string "species"
    t.string "aquarium_id"
    t.string "facts"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
