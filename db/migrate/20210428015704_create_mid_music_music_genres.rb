class CreateMidMusicMusicGenres < ActiveRecord::Migration[6.1]
  def change
    create_table :mid_music_music_genres do |t|
      t.references :mst_music
      t.references :mst_music_genre

      t.timestamps
    end
  end
end
