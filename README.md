One to Many Relationships
===

### SWBATs

* Implement one object to many objects relationship
  * One object _has many_ objects
  * One object _belongs to_ another object
* Demonstrate the concept of an Entity Relationship Diagram
* Practice passing custom objects as arguments to methods
* Demonstrate Single Source of Truth
* Infer type of method (class or instance) through naming conventions

### Outline

* Quick review of OOP:
  * we created classes
  * we created instances of classes using `initialize`
  * we created instance and class methods
  * we used `attr_` macros for getters and setters
    attr_reader - getter, retrieve data
    attr_writer - setter, set data
    attr_accessor - getter/setter, combine the two
  * we looked at `self`

* Learn about object oriented relationships driven via _deliverables_!
  * Define terminology, understand the importance of using clear language in programming
    * Pair programming! Technical interviews!
  * Introduce new concepts
  * Convert those concepts to code
  * Learn how to test our own code (without Learn tests)

### Define

What do the following mean in plain English? What do they mean in programming?

* Model - A representation, blueprint
* Domain - An area of focus, a set of related things
* Domain modeling - Twitter - tweets, replies, users
* Relationships
  * One to many relationship
  * Many to many relationship

_Why do we care so much about codifying and being really specific about the terminology of has-many/belongs-to?_ The terms are very powerful because we can use the same idea to describe relationships across many different types of domains. The relationship between artist and song, is the same as book and author, user and tweets, etc.

* Schema
* Single Source of Truth
  * How can we start thinking about the data in our models?

### How to think about relationships
1. For every one (x), how many (y)?
2. For every one (y), how many (x)?

### Deliverables

Create a User class. The class should have these methods:
  - [x] `User#initialize` takes a username and a bio and creates a User instance.
  - [x] `User#username` returns a string for the username. _Should not_ be able to change after the user is created.
  - [x] `User#bio` returns a short biography for the user. _Should_ be able to change after the user is created.
  - [x] `User#post_tweet` takes a message, creates a new tweet, and adds it to the user's tweet collection.
  - [x] `User#tweets` returns an array of Tweet instances.
  - [x] `User.all` returns all the User instances in our app.
  - [ ] `User.print_tweets` that prints the message of each tweet to the screen in a pretty way.
  - [ ] *bonus* `User.most_tweets` returns the instance of the user who has made the most tweets.

Create a Tweet class. The class should have these methods:
  - [x] `Tweet#initialize` takes a message and a user and creates a Tweet instance.
  - [x] `Tweet#message` returns a string. _Should not_ be able to change after the tweet is created.
  - [x] `Tweet#user` returns an instance of the user class.
  - [x] `Tweet.all` returns all the Tweet instances in our app.
  - [x] `Tweet#username` returns the username of the tweet's user.

### Discussion Questions

- What is a one-many-relationship? How would we draw that in an ERD?
- What does Single Source of Truth mean?
- What is a model? Domain? Domain model?

### Challenge
- Right now our Pokemon and Trainer class don't talk to each other. How can we change it so that one of the classes keeps track of the other? Which class should hold the information about the relationship?
- build a #pokemons method for trainer that yields all the pokemon a trainer has
- build a #trainer method for pokemon that yields its trainer
- build a #catch_pokemon method for trainer that takes in a name and a level and creates a pokemon, associating it with that trainer.

### Bonus
- build a #total_level method that shows the total level of all the pokemon the trainer has
- build an #average_level
