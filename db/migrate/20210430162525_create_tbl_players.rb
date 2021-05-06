class CreateTblPlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :tbl_players do |t|
      t.string :sdvx_id, comment: 'プレイヤーID'
      t.string :name, comment: 'プレイヤーネーム'
      t.integer :volforce, comment: 'ボルフォース'
      t.integer :volforce_rank, index: true, comment: 'ボルフォース順位'
      t.integer :puc_count_total, comment: '合計PUC数'
      t.integer :puc_count_20, comment: 'レベル20_PUC数'
      t.integer :puc_count_19, comment: 'レベル19_PUC数'
      t.integer :puc_count_18, comment: 'レベル18_PUC数'
      t.integer :puc_count_17, comment: 'レベル17_PUC数'
      t.integer :puc_count_16, comment: 'レベル16_PUC数'
      t.integer :puc_count_15, comment: 'レベル15_PUC数'
      t.integer :puc_count_14, comment: 'レベル14_PUC数'
      t.integer :puc_count_13, comment: 'レベル13_PUC数'
      t.integer :puc_count_12, comment: 'レベル12_PUC数'
      t.integer :puc_count_11, comment: 'レベル11_PUC数'
      t.integer :puc_count_10, comment: 'レベル10_PUC数'
      t.integer :puc_count_9, comment: 'レベル9_PUC数'
      t.integer :puc_count_8, comment: 'レベル8_PUC数'
      t.integer :puc_count_7, comment: 'レベル7_PUC数'
      t.integer :puc_count_6, comment: 'レベル6_PUC数'
      t.integer :puc_count_5, comment: 'レベル5_PUC数'
      t.integer :puc_count_4, comment: 'レベル4_PUC数'
      t.integer :puc_count_3, comment: 'レベル3_PUC数'
      t.integer :puc_count_2, comment: 'レベル2_PUC数'
      t.integer :puc_count_1, comment: 'レベル1_PUC数'

      t.timestamps
    end

    add_index :tbl_players, :sdvx_id, unique: true
  end
end
