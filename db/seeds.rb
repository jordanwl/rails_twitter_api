User.destroy_all

# Create a main user.
User.create!(username: "test_user",
             email: "test@test.com",
             password: "password",
             bio: Faker::Quote.matz)

# Create a bunch of additional users.
15.times do |n|
  User.create!(username: Faker::Twitter.unique.screen_name,
               email: "test#{n}@test.com",
               bio: Faker::Quote.matz,
               password: "password")
  n + 1
end

# Create tweets
5.times do
  User.all.each do |user|
    tweet = Tweet.new(content: Faker::Quotes::Shakespeare.romeo_and_juliet_quote)
    tweet.user = user
    tweet.created_at = ((1..9).to_a.sample).days.ago
    tweet.save!
  end
end

# Create following relationships.
User.all.each do |user|
  user.follow(User.all.sample(rand(1..10)))
end

print "Created test user (email: 'test@test.com' pass: password) and 15 random users with 5 tweets each"
