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

ActiveRecord::Schema.define(version: 2022_10_16_191039) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "current_members", force: :cascade do |t|
    t.string "memberID"
    t.string "name"
    t.string "email", null: false
    t.boolean "isAdmin"
    t.boolean "isAlumni"
    t.string "avatar_url"
    t.string "uid"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_current_members_on_email", unique: true
  end

  create_table "member_orgs", force: :cascade do |t|
    t.integer "memberOrgID"
    t.integer "memberID"
    t.integer "organizationID"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.integer "organizationID"
    t.string "name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "speakers", force: :cascade do |t|
    t.integer "speakerID"
    t.string "speakerName"
    t.string "speakerEmail"
    t.date "dateSpoke"
    t.string "organizationName"
    t.string "speakerWebsite"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
