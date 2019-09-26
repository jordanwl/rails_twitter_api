module Types
  class QueryType < Types::BaseObject
    field :tweets,
      [Types::TweetType],
      null: false

    field :tweet,
      Types::TweetType,
      null: false do
        argument :id, ID, required: true
      end

    field users,
      [Types::UserType],
      null: false

    field :user,
      Types::UserType,
      null: false do
        argument :id, ID, required: true
      end

    def tweets
      Tweet.all
    end

    def tweet(id:)
      Tweet.find(id)
    end

    def users
      User.all
    end

    def user(id:)
      User.find(id)
    end
  end
end
