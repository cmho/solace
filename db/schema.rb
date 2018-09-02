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

ActiveRecord::Schema.define(version: 20180902185915) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "character_has_merits", force: :cascade do |t|
    t.integer "character_id"
    t.integer "merit_id"
    t.integer "rating"
    t.string "specification"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.integer "creature_type_id"
    t.boolean "is_npc", default: false
    t.string "virtue"
    t.string "vice"
    t.integer "association_id"
    t.integer "strength"
    t.integer "dexterity"
    t.integer "stamina"
    t.integer "intelligence"
    t.integer "wits"
    t.integer "resolve"
    t.integer "presence"
    t.integer "manipulation"
    t.integer "composure"
    t.integer "academics"
    t.integer "computer"
    t.integer "crafts"
    t.integer "investigation"
    t.integer "medicine"
    t.integer "occult"
    t.integer "politics"
    t.integer "science"
    t.integer "athletics"
    t.integer "brawl"
    t.integer "drive"
    t.integer "firearms"
    t.integer "larceny"
    t.integer "stealth"
    t.integer "survival"
    t.integer "weaponry"
    t.integer "animal_ken"
    t.integer "empathy"
    t.integer "expression"
    t.integer "intimidation"
    t.integer "persuasion"
    t.integer "socialize"
    t.integer "streetwise"
    t.integer "subterfuge"
    t.integer "size"
    t.integer "speed"
    t.integer "defense"
    t.integer "initiative_mod"
    t.integer "armor_ballistic"
    t.integer "armor_general"
    t.integer "health"
    t.integer "willpower"
    t.text "public_blurb"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "creature_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "downtime_actions", force: :cascade do |t|
    t.string "title"
    t.integer "character_id"
    t.integer "game_id"
    t.text "description"
    t.integer "action_type_id"
    t.string "goal"
    t.string "assets"
    t.text "additional_notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "equipment", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "size"
    t.integer "durability"
    t.integer "equipment_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "equipment_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade do |t|
    t.string "title"
    t.integer "game_order"
    t.datetime "downtime_actions_open"
    t.datetime "downtime_actions_close"
    t.boolean "downtime_responses_visible"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "merits", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.boolean "requires_specification"
    t.boolean "requires_description"
    t.string "allowed_ratings"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "settings", force: :cascade do |t|
    t.string "var", null: false
    t.text "value"
    t.integer "thing_id"
    t.string "thing_type", limit: 30
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["thing_type", "thing_id", "var"], name: "index_settings_on_thing_type_and_thing_id_and_var", unique: true
  end

  create_table "skill_specialties", force: :cascade do |t|
    t.string "name"
    t.string "skill"
    t.string "specialty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "address_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "xp_expenditures", force: :cascade do |t|
    t.integer "character_id"
    t.text "diff"
    t.integer "amount"
    t.boolean "is_approved"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "xp_records", force: :cascade do |t|
    t.integer "character_id"
    t.integer "amount"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
