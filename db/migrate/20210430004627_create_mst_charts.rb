class CreateMstCharts < ActiveRecord::Migration[6.1]
  def change
    create_table :mst_charts do |t|
      t.references :mst_music
      t.integer :difficulty, index: true, comment: '難易度'
      t.integer :level, index: true, comment: 'レベル'
      t.string :illustrator, comment: 'ジャケットイラストレーター'
      t.string :effector, comment: 'エフェクター'
      t.string :jacket, comment: 'ジャケット'

      t.timestamps
    end
  end
end
