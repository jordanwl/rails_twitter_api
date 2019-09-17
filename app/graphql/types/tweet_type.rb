module Types
  class TweetType < Types::BaseObject
    field :id, ID, null: false
    field :content, String, null: false
    field :userId, ID, null: false
  end
end
