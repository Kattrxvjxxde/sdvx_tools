module Mutations
  class CreateMstMusic < Mutations::BaseMutation
    argument :title, String, required: true
    argument :composer, String, required: true
    argument :music_genres, String, required: true

    field :status, String, null: false # 更新ステータス
    field :mst_music, Types::MstMusicType, null: false
    field :music_genres, [Types::MstMusicGenreType], null: true

    def resolve(**args)
      # 楽曲名から MstMusic を 新規作成 or 取得
      mst_music = MstMusic.find_or_initialize_by(title: args[:title])

      if mst_music.persisted?
        # DB登録済みの場合は保存処理をスキップ
        status = :persisted
      else
        # そうでない場合は保存処理を行う
        status = :create
        # 作曲者登録
        mst_music.composer = args[:composer]

        # MstMusic 保存
        mst_music.save

        # 楽曲ジャンル登録
        resister_music_genres(mst_music, args[:music_genres])
      end

      # 返り値
      {
        status: status,
        mst_music: mst_music,
        music_genres: mst_music.mst_music_genres
      }
    end

    def resister_music_genres(mst_music, music_genres)
      # 楽曲ジャンルがない場合はスキップ
      return if music_genres.blank?

      # 楽曲ジャンル名を「;」ごとに区切り、紐付け
      music_genres.split(';').each do |music_genre|
        # 楽曲ジャンル名がない場合は作成
        mst_music_genre = MstMusicGenre.find_or_create_by(name: music_genre)
        # 中間テーブルにより紐付け
        MidMusicMusicGenre.find_or_create_by(mst_music: mst_music, mst_music_genre: mst_music_genre)
      end
    end
  end
end
