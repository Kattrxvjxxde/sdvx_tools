class CreateMstMusics < ActiveRecord::Migration[6.1]
  def change
    create_table :mst_musics do |t|
      t.string :title, index: true, comment: '楽曲名'
      t.string :composer, comment: '作曲者'

      t.timestamps
    end
  end
end
