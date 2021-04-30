module Types
  class MstChartType < Types::BaseObject
    field :id, Int, null: false
    field :difficulty, String, null: false
    field :level, Int, null: false
    field :illustrator, String, null: true
    field :effector, String, null: true
  end
end
