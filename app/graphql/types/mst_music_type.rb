module Types
  class MstMusicType < Types::BaseObject
    field :id, Int, null: false
    field :title, String, null: false
    field :composer, String, null: true
  end
end
