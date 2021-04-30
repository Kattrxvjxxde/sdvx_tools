class MstMusic < ApplicationRecord
  has_many :mid_music_music_genres, dependent: :destroy
  has_many :mst_music_genres, through: :mid_music_music_genres
  has_many :mst_charts
end
