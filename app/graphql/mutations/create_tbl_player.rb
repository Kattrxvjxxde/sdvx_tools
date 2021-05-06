module Mutations
  class CreateTblPlayer < Mutations::BaseMutation
    argument :sdvx_id, String, required: true
    argument :name, String, required: true
    argument :volforce, Int, required: true
    argument :volforce_rank, Int, required: true
    argument :puc_count_total, Int, required: false
    argument :puc_count_20, Int, required: false
    argument :puc_count_19, Int, required: false
    argument :puc_count_18, Int, required: false
    argument :puc_count_17, Int, required: false
    argument :puc_count_16, Int, required: false
    argument :puc_count_15, Int, required: false
    argument :puc_count_14, Int, required: false
    argument :puc_count_13, Int, required: false
    argument :puc_count_12, Int, required: false
    argument :puc_count_11, Int, required: false
    argument :puc_count_10, Int, required: false
    argument :puc_count_9, Int, required: false
    argument :puc_count_8, Int, required: false
    argument :puc_count_7, Int, required: false
    argument :puc_count_6, Int, required: false
    argument :puc_count_5, Int, required: false
    argument :puc_count_4, Int, required: false
    argument :puc_count_3, Int, required: false
    argument :puc_count_2, Int, required: false
    argument :puc_count_1, Int, required: false

    field :status, String, null: false # 更新ステータス
    field :tbl_player, Types::TblPlayerType, null: false

    def resolve(**args) # rubocop:disable Metrics/AbcSize, Metrics/MethodLength
      # プレイヤーIDから TblPlayer を 新規作成 or 取得
      tbl_player = TblPlayer.find_or_initialize_by(sdvx_id: args[:sdvx_id])

      # 更新ステータス判定
      status = tbl_player.persisted? ? :update : :create

      # プレイヤー情報登録
      tbl_player.name = args[:name]
      tbl_player.volforce = args[:volforce]
      tbl_player.volforce_rank = args[:volforce_rank]
      tbl_player.puc_count_total = args[:puc_count_total]
      tbl_player.puc_count_20 = args[:puc_count_20]
      tbl_player.puc_count_19 = args[:puc_count_19]
      tbl_player.puc_count_18 = args[:puc_count_18]
      tbl_player.puc_count_17 = args[:puc_count_17]
      tbl_player.puc_count_16 = args[:puc_count_16]
      tbl_player.puc_count_15 = args[:puc_count_15]
      tbl_player.puc_count_14 = args[:puc_count_14]
      tbl_player.puc_count_13 = args[:puc_count_13]
      tbl_player.puc_count_12 = args[:puc_count_12]
      tbl_player.puc_count_11 = args[:puc_count_11]
      tbl_player.puc_count_10 = args[:puc_count_10]
      tbl_player.puc_count_9 = args[:puc_count_9]
      tbl_player.puc_count_8 = args[:puc_count_8]
      tbl_player.puc_count_7 = args[:puc_count_7]
      tbl_player.puc_count_6 = args[:puc_count_6]
      tbl_player.puc_count_5 = args[:puc_count_5]
      tbl_player.puc_count_4 = args[:puc_count_4]
      tbl_player.puc_count_3 = args[:puc_count_3]
      tbl_player.puc_count_2 = args[:puc_count_2]
      tbl_player.puc_count_1 = args[:puc_count_1]

      # プレイヤー情報保存
      tbl_player.save

      # 返り値
      {
        status: status,
        tbl_player: tbl_player
      }
    end
  end
end
