module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :username, String, null: false
    field :email, String, null: false
    field :bio, String, null: true
    field :tweets, [Types::TweetType], null: true
    field :followers, [Types::UserType], null: true
    field :following, [Types::UserType], null: true

    def followers
      object.followers
    end

    def following
      object.following
    end
  end
end
