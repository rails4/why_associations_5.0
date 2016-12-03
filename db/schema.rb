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

ActiveRecord::Schema.define(version: 5) do

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.string   "isbn"
    t.string   "pub_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "articles_authors", id: false, force: :cascade do |t|
    t.integer "article_id"
    t.integer "author_id"
    t.index ["article_id"], name: "index_articles_authors_on_article_id"
    t.index ["author_id"], name: "index_articles_authors_on_author_id"
  end

  create_table "authors", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "flights", id: false, force: :cascade do |t|
    t.integer "year"
    t.integer "month"
    t.integer "day"
    t.integer "dep_time"
    t.integer "sched_dep_time"
    t.        "dep_delay"
    t.integer "arr_time"
    t.integer "sched_arr_time"
    t.        "arr_delay"
    t.text    "carrier"
    t.integer "flight"
    t.text    "tailnum"
    t.text    "origin"
    t.text    "dest"
    t.        "air_time"
    t.        "distance"
    t.        "hour"
    t.        "minute"
    t.        "time_hour"
    t.index ["carrier"], name: "flights_carrier"
    t.index ["tailnum"], name: "flights_tailnum"
    t.index ["year", "month", "day"], name: "flights_year_month_day"
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "order_date"
    t.string   "order_number"
    t.integer  "customer_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["customer_id"], name: "index_orders_on_customer_id"
  end

  create_table "sqlite_stat1", id: false, force: :cascade do |t|
    t. "tbl"
    t. "idx"
    t. "stat"
  end

end
