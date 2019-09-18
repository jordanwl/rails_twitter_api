module Types
  class QueryType < Types::BaseObject
    field :tweets,
      [Types::TweetType],
      null: false,
      description: "Returns a list of all tweets"

    field :user,
      Types::UserType,
      null: false,
      description: "Returns a list of all users" do
        argument :id, ID, required: true
      end

    def tweets
      Tweet.all
    end

    def user(id:)
      User.find(id)
    end
  end
end
