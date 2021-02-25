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

ActiveRecord::Schema.define(version: 2021_02_25_031020) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assessments", force: :cascade do |t|
    t.float "rating"
    t.string "assessment_type", default: "event"
    t.bigint "player_id", null: false
    t.bigint "user_id", null: false
    t.bigint "tournament_id", null: false
    t.index ["player_id"], name: "index_assessments_on_player_id"
    t.index ["tournament_id"], name: "index_assessments_on_tournament_id"
    t.index ["user_id"], name: "index_assessments_on_user_id"
  end

  create_table "notes", force: :cascade do |t|
    t.string "note"
    t.bigint "user_id", null: false
    t.bigint "assessments_id", null: false
    t.bigint "assessment_id", null: false
    t.index ["assessment_id"], name: "index_notes_on_assessment_id"
    t.index ["assessments_id"], name: "index_notes_on_assessments_id"
    t.index ["user_id"], name: "index_notes_on_user_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "height"
    t.integer "weight"
    t.string "birthday"
    t.integer "graduation_year"
    t.string "position"
    t.boolean "recruit", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "team_id"
    t.index ["team_id"], name: "index_players_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "age_group"
    t.string "coach", default: ""
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tournament_teams", force: :cascade do |t|
    t.bigint "team_id"
    t.bigint "tournament_id"
    t.index ["team_id"], name: "index_tournament_teams_on_team_id"
    t.index ["tournament_id"], name: "index_tournament_teams_on_tournament_id"
  end

  create_table "tournaments", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.string "state"
    t.string "start_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "auth_token"
    t.string "full_name"
    t.bigint "team_id"
    t.index ["team_id"], name: "index_users_on_team_id"
  end

  add_foreign_key "assessments", "players"
  add_foreign_key "assessments", "tournaments"
  add_foreign_key "assessments", "users"
  add_foreign_key "notes", "assessments"
  add_foreign_key "notes", "assessments", column: "assessments_id"
  add_foreign_key "notes", "users"
  add_foreign_key "players", "teams"
  add_foreign_key "users", "teams"
end
