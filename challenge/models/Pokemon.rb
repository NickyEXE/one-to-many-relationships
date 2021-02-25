class Pokemon

  @@all = []

  def initialize(name, level)
    @name, @level = name, level
    @@all << self
  end

  def self.all
    @@all
  end

end
