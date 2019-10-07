# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_07_012529) do

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "gender"
    t.integer "planet_id", null: false
    t.integer "starship_id", null: false
    t.integer "specie_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["planet_id"], name: "index_characters_on_planet_id"
    t.index ["specie_id"], name: "index_characters_on_specie_id"
    t.index ["starship_id"], name: "index_characters_on_starship_id"
  end

  create_table "inhabits", force: :cascade do |t|
    t.integer "planet_id", null: false
    t.integer "specie_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["planet_id"], name: "index_inhabits_on_planet_id"
    t.index ["specie_id"], name: "index_inhabits_on_specie_id"
  end

  create_table "pages", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.string "permalink"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "planets", force: :cascade do |t|
    t.string "name"
    t.string "population"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "species", force: :cascade do |t|
    t.string "name"
    t.string "language"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "starships", force: :cascade do |t|
    t.string "name"
    t.string "model"
    t.string "crew"
    t.string "passengers"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "characters", "planets"
  add_foreign_key "characters", "species", column: "specie_id"
  add_foreign_key "characters", "starships"
  add_foreign_key "inhabits", "planets"
  add_foreign_key "inhabits", "species", column: "specie_id"
end
