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

ActiveRecord::Schema.define(version: 2021_04_28_015704) do

  create_table "mid_music_music_genres", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "mst_music_id"
    t.bigint "mst_music_genre_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["mst_music_genre_id"], name: "index_mid_music_music_genres_on_mst_music_genre_id"
    t.index ["mst_music_id"], name: "index_mid_music_music_genres_on_mst_music_id"
  end

  create_table "mst_music_genres", charset: "utf8mb4", force: :cascade do |t|
    t.string "name", comment: "ジャンル名"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "mst_musics", charset: "utf8mb4", force: :cascade do |t|
    t.string "title", comment: "楽曲名"
    t.string "composer", comment: "作曲者"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["title"], name: "index_mst_musics_on_title"
  end

end
