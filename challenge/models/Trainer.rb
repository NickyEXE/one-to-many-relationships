class Trainer

  @@all = []

  def initialize(name, home_city, age)
    @name, @home_city, @age = name, home_city, age
    @@all << self
  end

  def self.all
    @@all
  end



end
