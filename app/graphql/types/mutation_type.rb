module Types
  class MutationType < Types::BaseObject
    field :create_mst_music, mutation: Mutations::CreateMstMusic
    field :create_mst_chart, mutation: Mutations::CreateMstChart
  end
end
