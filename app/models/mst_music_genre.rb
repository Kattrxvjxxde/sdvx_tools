class MstMusicGenre < ApplicationRecord
  has_many :mid_music_music_genres, dependent: :destroy
  has_many :mst_musics, through: :mid_music_music_genres
end
