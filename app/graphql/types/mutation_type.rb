module Types
  class MutationType < Types::BaseObject
    field :create_mst_music, mutation: Mutations::CreateMstMusic
    field :create_mst_chart, mutation: Mutations::CreateMstChart
    field :create_tbl_player, mutation: Mutations::CreateTblPlayer
  end
end
