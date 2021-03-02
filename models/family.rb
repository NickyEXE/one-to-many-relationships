class Family

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def users
    # go through every user
    User.all.select{|user| user.family == self}
    # give me all the users that have a family of self
  end

  def tweets
    users.map{|user| user.tweets}.flatten
    # self == the family
    # give me all my users
    # for each of those users, give me their tweets
  end

end
