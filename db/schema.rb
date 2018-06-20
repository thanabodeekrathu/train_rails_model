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

ActiveRecord::Schema.define(version: 2018_06_20_073917) do

  create_table "product_names", force: :cascade do |t|
    t.integer "product_id"
    t.string "lang"
    t.string "name"
    t.index ["product_id"], name: "index_product_names_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.integer "price"
  end

  create_table "songs", force: :cascade do |t|
    t.string "name"
    t.string "band"
    t.string "album"
    t.string "genre"
    t.string "chord"
  end

end