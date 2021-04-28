class CreateMstMusicGenres < ActiveRecord::Migration[6.1]
  def change
    create_table :mst_music_genres do |t|
      t.string :name, comment: 'ジャンル名'

      t.timestamps
    end
  end
end
