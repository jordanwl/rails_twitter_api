module Types
  class QueryType < Types::BaseObject
    field :tweets,
      [Types::TweetType],
      null: false,
      description: "Returns a list of all tweets"

    def tweets
      Tweet.all
    end
  end
end
