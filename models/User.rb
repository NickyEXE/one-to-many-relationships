class User
  attr_accessor :bio, :username

  @@all = []

  def initialize(username, bio)
    @username = username
    @bio = bio
    @@all << self
  end

  def self.most_tweets
    User.all.sort_by{|user| user.tweets.size}.last
  end

  def tweets
    Tweet.all.select do |tweet|
      tweet.user == self
    end
  end

  def post_tweet(message)
    Tweet.new(message, self)
  end

  def self.all
    @@all
  end

  def self.create_by_username(username, bio="Not a russian bot")
    username = User.new(username, bio)
  end

  def self.find_by_username(username)
    self.all.find{|user| user.username == username}
  end

  def self.find_or_create_by_username(username)
    self.find_by_username(username) || self.create_by_username(username)
  end
end
