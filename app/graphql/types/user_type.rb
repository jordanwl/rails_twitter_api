module Types
  class UserType < Types::BaseObject
    field :username, String, null: false
    field :email, String, null: false
    field :bio, String, null: true
    field :tweets, [Types::TweetType], null: true do
      argument :user_id, ID, required: true
    end
    field :followers, [Types::UserType], null: true do
      argument :user_id, ID, required: true
    end
    field :followed, [Types::UserType], null: true do
      argument :user_id, ID, required: true
    end

    def tweets(user_id:)
      Tweet.where(user_id: user_id)
    end

    def followers(user_id:)
      Relationship.where(follower_id: user_id)
    end

    def followed(user_id:)
      Relationship.where(followed_id: user_id)
    end
  end
end
