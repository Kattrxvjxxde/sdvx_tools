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

ActiveRecord::Schema.define(version: 2021_04_30_162525) do

  create_table "mid_music_music_genres", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "mst_music_id"
    t.bigint "mst_music_genre_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["mst_music_genre_id"], name: "index_mid_music_music_genres_on_mst_music_genre_id"
    t.index ["mst_music_id"], name: "index_mid_music_music_genres_on_mst_music_id"
  end

  create_table "mst_charts", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "mst_music_id"
    t.integer "difficulty", comment: "難易度"
    t.integer "level", comment: "レベル"
    t.string "illustrator", comment: "ジャケットイラストレーター"
    t.string "effector", comment: "エフェクター"
    t.string "jacket", comment: "ジャケット"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["difficulty"], name: "index_mst_charts_on_difficulty"
    t.index ["level"], name: "index_mst_charts_on_level"
    t.index ["mst_music_id"], name: "index_mst_charts_on_mst_music_id"
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

  create_table "tbl_players", charset: "utf8mb4", force: :cascade do |t|
    t.string "sdvx_id", comment: "プレイヤーID"
    t.string "name", comment: "プレイヤーネーム"
    t.integer "volforce", comment: "ボルフォース"
    t.integer "volforce_rank", comment: "ボルフォース順位"
    t.integer "puc_count_total", comment: "合計PUC数"
    t.integer "puc_count_20", comment: "レベル20_PUC数"
    t.integer "puc_count_19", comment: "レベル19_PUC数"
    t.integer "puc_count_18", comment: "レベル18_PUC数"
    t.integer "puc_count_17", comment: "レベル17_PUC数"
    t.integer "puc_count_16", comment: "レベル16_PUC数"
    t.integer "puc_count_15", comment: "レベル15_PUC数"
    t.integer "puc_count_14", comment: "レベル14_PUC数"
    t.integer "puc_count_13", comment: "レベル13_PUC数"
    t.integer "puc_count_12", comment: "レベル12_PUC数"
    t.integer "puc_count_11", comment: "レベル11_PUC数"
    t.integer "puc_count_10", comment: "レベル10_PUC数"
    t.integer "puc_count_9", comment: "レベル9_PUC数"
    t.integer "puc_count_8", comment: "レベル8_PUC数"
    t.integer "puc_count_7", comment: "レベル7_PUC数"
    t.integer "puc_count_6", comment: "レベル6_PUC数"
    t.integer "puc_count_5", comment: "レベル5_PUC数"
    t.integer "puc_count_4", comment: "レベル4_PUC数"
    t.integer "puc_count_3", comment: "レベル3_PUC数"
    t.integer "puc_count_2", comment: "レベル2_PUC数"
    t.integer "puc_count_1", comment: "レベル1_PUC数"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sdvx_id"], name: "index_tbl_players_on_sdvx_id", unique: true
    t.index ["volforce_rank"], name: "index_tbl_players_on_volforce_rank"
  end

end
