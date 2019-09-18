module Types
  class UserType < Types::BaseObject
    field :username, String, null: false
    field :email, String, null: false
    field :bio, String, null: true
    field :tweets, [Types::TweetType], null: true do
      argument :user_id, ID, required: true
    end

    def tweets(user_id:)
      Tweet.where(user_id: user_id)
    end
  end
end
