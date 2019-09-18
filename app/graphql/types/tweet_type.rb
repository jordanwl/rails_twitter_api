module Types
  class TweetType < Types::BaseObject
    field :id, ID, null: false
    field :content, String, null: false
    field :userId, ID, null: false
    field :createdAt, GraphQL::Types::ISO8601DateTime, null: false
  end
end
