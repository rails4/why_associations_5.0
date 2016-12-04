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

ActiveRecord::Schema.define(version: 0) do

  create_table "flights", id: false, force: :cascade do |t|
    t.text    "origin"
    t.text    "dest"
    t.        "distance"
    t.        "dep_delay"
    t.        "arr_delay"
    t.text    "dep_time"
    t.text    "sched_dep_time"
    t.text    "arr_time"
    t.text    "sched_arr_time"
    t.        "air_time"
    t.integer "id"
    t.index ["dest"], name: "flights_dest"
    t.index ["origin"], name: "flights_origin"
  end

  create_table "sqlite_stat1", id: false, force: :cascade do |t|
    t. "tbl"
    t. "idx"
    t. "stat"
  end

end
