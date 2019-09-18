module Types
  class QueryType < Types::BaseObject
    field :tweets,
      [Types::TweetType],
      null: false,
      description: "Returns a list of all tweets"

    field :users,
      [Types::UserType],
      null: false,
      description: "Returns a list of all users"

    def tweets
      Tweet.all
    end

    def users
      User.all
    end
  end
end
