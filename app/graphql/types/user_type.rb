module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :username, String, null: false
    field :email, String, null: false
    field :bio, String, null: true
    field :tweets, [Types::TweetType], null: true

    def tweets
      Tweet.all
    end
  end
end
