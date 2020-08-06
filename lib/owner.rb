require_relative "./cat.rb"
require_relative "./dog.rb"

require 'pry'


class Owner

  attr_reader :name, :species

  @@all = []

  def initialize(name, species="human")
    @name = name
    @species = species
    @@all << self
  end

  #Class Methods
  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    Owner.all.clear
  end

  #Instance Methods
  def say_species
    "I am a #{self.species}."
  end

  def cats
    #binding.pry
    Cat.all.select {|cat| cat.owner == self}
  end

  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end

  def buy_cat(name)
    cat = Cat.new(name, self)
  end

  def buy_dog(name)
    dog = Dog.new(name, self)
  end

  def walk_dogs
    #find all the owner's dog
    #iterate to change dog's mood to "happy"
    dogs.each {|dog| dog.mood = "happy"}
  end

  def feed_cats
    cats.each {|cat| cat.mood = "happy"}
  end

  #Created a method to get an array of all pets.
  def pets
    pets = self.dogs + self.cats
  end

  def sell_pets
    pets.each do |pet| 
      pet.owner = nil
      pet.mood = "nervous"
    end
  end

  def list_pets
    "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
  end




end