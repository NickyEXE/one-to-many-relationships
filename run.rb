require 'pry'

require_relative "./models/user.rb"
require_relative "./models/tweet.rb"
require_relative "./models/family.rb"


# Family -< User -< Tweets


# Seed data
Family.new("Caffeine Family")
Family.new("Addams Family")
coffee = User.new("CoffeeDad", "Dad Who Likes Coffee", Family.all.first)
User.new("Tea Mom", "Mom who loves Tea", Family.all.first)
User.new("FourLoko Son", "YEEEEAH", Family.all.first)
User.new("Gomez",	"Sic Gorgiamus Allos Subjectatos Nunc", Family.all[1])
User.new("Wednesday",	"I do not tweet.", Family.all[1])
Tweet.new("Love my coffee so much my son said why don't you marry it and I immediately went and got a divorce and married my love, coffee", User.all.first)
Tweet.new("Love my coffee so much we're going to couples counseling", User.all.first)
Tweet.new("I love tea", User.all[1])
Tweet.new("I love our unstable son", User.all[1])
Tweet.new("I love our unstable daughter", User.all[3])
Tweet.new("Cofffeeeeeeeeee", User.all.first)
Tweet.new("If anyone knows who owns this account he stole my iPhone and left his", User.all[2])
Tweet.new("Spilling tea #literally", User.all[1])
Tweet.new("The only music this phone has on it is 'Pulp Fiction Soundtrack' wth", User.all[2])

Family.all.first.tweets

binding.pry
