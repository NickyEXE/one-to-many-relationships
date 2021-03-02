class Tweet

  attr_reader :message, :user

  @@all = []

  def initialize(message, user)
    @message = message
    @user = user
    @@all << self
  end

  def self.all
    @@all
  end

  def username
    self.user.username
  end

  def family
    user.family
  end

  def family_name
    family.name
  end

end
