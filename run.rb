require 'pry'

require_relative "./models/User.rb"
require_relative "./models/Tweet.rb"

# Seed data
coffee = User.new("CoffeeDad", "Dad Who Likes Coffee")
User.new("Tea Mom", "Mom who loves Tea")
User.new("FourLoko Son", "YEEEEAH")
Tweet.new("Love my coffee so much my son said why don't you marry it and I immediately went and got a divorce and married my love, coffee", User.all.first)
Tweet.new("Love my coffee so much we're going to couples counseling", User.all.first)
Tweet.new("I love tea", User.all[1])

binding.pry
