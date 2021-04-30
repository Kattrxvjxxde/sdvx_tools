module Mutations
  class CreateMstChart < Mutations::BaseMutation
    argument :title, String, required: true
    argument :difficulty, String, required: true
    argument :level, Int, required: true
    argument :illustrator, String, required: true
    argument :effector, String, required: true
    argument :jacket_url, String, required: true

    field :status, String, null: false # 更新ステータス
    field :mst_chart, Types::MstChartType, null: true

    def resolve(**args)
      # 楽曲名から MstMusic を取得
      mst_music = MstMusic.find_by(title: args[:title])

      # MstMusic が存在しない場合は処理を行わない
      return { status: 'MstMusic not found' } if mst_music.blank?

      # 難易度から MstChart を 新規作成 or 取得
      mst_chart = mst_music.mst_charts.find_or_initialize_by(difficulty: args[:difficulty])

      if mst_chart.persisted?
        # DB登録済みの場合は保存処理をスキップ
        status = :persisted
      else
        # そうでない場合は保存処理を行う
        status = :create
        # レベル登録
        mst_chart.level = args[:level]
        # ジャケットイラストレーター登録
        mst_chart.illustrator = args[:illustrator]
        # エフェクター登録
        mst_chart.effector = args[:effector]
        # ジャケット登録
        mst_chart.remote_jacket_url = args[:jacket_url]

        # MstChart 保存
        mst_chart.save
      end

      # 返り値
      {
        status: status,
        mst_chart: mst_chart
      }
    end
  end
end
