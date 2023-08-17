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

ActiveRecord::Schema[7.0].define(version: 2023_08_17_191328) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clubs", force: :cascade do |t|
    t.string "club_name"
    t.string "club_type"
    t.string "club_website"
    t.integer "member_count"
    t.string "contact_name"
    t.string "contact_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stats", force: :cascade do |t|
    t.integer "clubs_count", default: 0, null: false
    t.integer "members_count", default: 0, null: false
    t.integer "singleton_guard"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["singleton_guard"], name: "index_stats_on_singleton_guard", unique: true
  end

end
