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

ActiveRecord::Schema[8.0].define(version: 2025_06_10_202814) do
  create_table "players", charset: "latin1", force: :cascade do |t|
    t.string "start_name"
    t.integer "order_number"
    t.bigint "room_id", null: false
    t.integer "money"
    t.integer "current_bet"
    t.boolean "is_folded"
    t.boolean "is_eliminated"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_players_on_room_id"
  end

  create_table "players_pots", id: false, charset: "latin1", force: :cascade do |t|
    t.bigint "pot_id", null: false
    t.bigint "player_id", null: false
    t.index ["player_id"], name: "fk_rails_fb0a8cd66f"
    t.index ["pot_id"], name: "fk_rails_f30a2dcb3b"
  end

  create_table "pots", charset: "latin1", force: :cascade do |t|
    t.integer "money"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", charset: "latin1", force: :cascade do |t|
    t.integer "start_money"
    t.integer "round_index"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "current_player_id"
    t.integer "small_blind_amount"
    t.bigint "small_blind_player_id"
    t.bigint "admin_player_id"
    t.index ["admin_player_id"], name: "index_rooms_on_admin_player_id"
    t.index ["current_player_id"], name: "index_rooms_on_current_player_id"
    t.index ["small_blind_player_id"], name: "index_rooms_on_small_blind_player_id"
  end

  add_foreign_key "players", "rooms"
  add_foreign_key "players_pots", "players"
  add_foreign_key "players_pots", "pots"
  add_foreign_key "rooms", "players", column: "admin_player_id"
  add_foreign_key "rooms", "players", column: "current_player_id"
  add_foreign_key "rooms", "players", column: "small_blind_player_id"
end
