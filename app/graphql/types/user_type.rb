module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :username, String, null: false
    field :email, String, null: false
    field :bio, String, null: true
    field :tweets, [Types::TweetType], null: true do
      argument :user_id, ID, required: true
    end
    field :followers, [Types::UserType], null: true do
      argument :user_id, ID, required: true
    end
    field :following, [Types::UserType], null: true do
      argument :user_id, ID, required: true
    end

    def tweets(user_id:)
      Tweet.where(user_id: user_id)
    end

    def followers(user_id:)
      user = User.find(user_id)
      user.followers
    end

    def following(user_id:)
      user = User.find(user_id)
      user.following
    end
  end
end
