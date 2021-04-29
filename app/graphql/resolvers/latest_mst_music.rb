module Resolvers
  # 最近の楽曲名を返却
  class LatestMstMusic < GraphQL::Schema::Resolver
    type String, null: true

    def resolve
      MstMusic.last&.title
    end
  end
end
